package com.how2java.controller;


import com.alibaba.fastjson.JSON;
import com.how2java.pojo.Course;
import com.how2java.pojo.Student;
import com.how2java.pojo.Xuanke;
import com.how2java.service.CourseService;
import com.how2java.service.StudentService;
import com.how2java.service.XuankeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.how2java.util.Page;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    CourseService courseService;
    @Autowired
    XuankeService xuankeService;
    @RequestMapping("listCategory")
    public ModelAndView listCategory(Page page){
        ModelAndView mav=new ModelAndView();
        List<Student> cs=studentService.list();
        mav.addObject("cs",cs);
        mav.setViewName("listCategory");
        return mav;
    }
    @RequestMapping("/loginStudent")
    public ModelAndView loginStudent(Student student, HttpSession session){
        ModelAndView mav=new ModelAndView();
        List<Student> cs=studentService.selectbynumandpassword(student);
        System.out.println(student.getNumber()+student.getPassword());

        if (cs.isEmpty()) {
            mav.setViewName("listCategory");
        }else{
            mav.setViewName("main");
        }
        session.setAttribute("username","欢迎登录");
        return mav;
    }
    @RequestMapping("/showAllClasses")
    public ModelAndView showAllClasses(){
        ModelAndView mav=new ModelAndView();
        List<Course> courses=courseService.list();
        for (Course c:courses
             ) {
            System.out.println(c.getId()+c.getTeacher());
        }
        mav.addObject("courses",courses);
        mav.addObject("test","test");
        mav.setViewName("showAllClasses");
        return mav;
    }
    @RequestMapping("/adminlogin")
    public ModelAndView adminlogin(){
        ModelAndView mav=new ModelAndView();
        mav.setViewName("admin");
        return mav;
    }
    @RequestMapping("/showMyClasses")
    public ModelAndView showMyClasses(){
       return showclasses();
    }
    @RequestMapping("/deletexuanke")
    public ModelAndView deletexuanke(HttpServletRequest request){
        Map<String,Object> map=new HashMap<>();
        map.put("stuno","001");
        map.put("courseno",request.getParameter("number"));
        xuankeService.delete(map);
        return showclasses();
    }
    @RequestMapping("/changexuanke")
    public ModelAndView changexuanke(HttpServletRequest request,HttpServletResponse response){
        Xuanke xuanke=new Xuanke();
        xuanke.setCourseno(request.getParameter("id"));
        xuanke.setStuno("001");
        Map<String,Object> map=new HashMap<>();
        map.put("stuno","001");
        map.put("courseno",request.getParameter("id"));
        Xuanke xuanke2=null;
       try{
           if((xuanke2=xuankeService.selectbyno(map))==null){
               xuankeService.insert(xuanke);
               Course course=courseService.listbyno(Integer.parseInt(request.getParameter("id")));
               course.setChoose(course.getChoose()+1);
               courseService.update(course);
           }else {
               HttpSession session=request.getSession();
               System.out.println("已经存在");
           }
       }catch (Exception e){
           e.printStackTrace();
       }

        return showclassesall();
    }
    public ModelAndView showclasses(){
        ModelAndView mav=new ModelAndView();
        List<Xuanke> xuankes=xuankeService.selectbystuno("001");
        List<Course> course=new ArrayList<>();
        for (Xuanke xk:xuankes
                ) {
            course.add(courseService.listbyno(Integer.valueOf(xk.getCourseno())));
        }
        mav.addObject("xuanke",xuankes);
        mav.addObject("courses",course);
        mav.setViewName("showMyClasses");
        return mav;
    }
    public ModelAndView showclassesall(){
        ModelAndView mav=new ModelAndView();
        List<Course> courses=courseService.list();
        mav.addObject("courses",courses);
        mav.addObject("test","test");
        mav.setViewName("showAllClasses");
        return mav;
    }
    @RequestMapping("/studentmanage")
    public ModelAndView studentmange(){
        ModelAndView mav=new ModelAndView();
        List<Student> students=studentService.list();
        mav.addObject("students",students);
        mav.setViewName("studentmanage");
        return mav;
    }
}

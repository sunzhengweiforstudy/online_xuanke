package com.how2java.service.impl;

import com.how2java.mapper.CourseMapper;
import com.how2java.pojo.Course;
import com.how2java.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    CourseMapper mapper;
    @Override
    public List<Course> list() {
        return mapper.list();
    }

    @Override
    public Course listbyno(int id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public void update(Course course) {
        mapper.updateByPrimaryKey(course);
    }
}

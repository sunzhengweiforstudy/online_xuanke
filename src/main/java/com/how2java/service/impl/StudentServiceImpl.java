package com.how2java.service.impl;

import com.how2java.mapper.StudentMapper;
import com.how2java.pojo.Student;
import com.how2java.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StudentServiceImpl  implements StudentService {
    @Autowired
    StudentMapper studentMapper;
    @Override
    public List<Student> list() {
        return studentMapper.list();
    }

    @Override
    public List<Student> selectbynumandpassword(Student student) {
        return studentMapper.selectbynumandpassword(student);
    }
}

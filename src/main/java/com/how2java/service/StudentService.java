package com.how2java.service;

import com.how2java.pojo.Student;

import java.util.List;

public interface StudentService {
    List<Student> list();

    List<Student> selectbynumandpassword(Student student);
}

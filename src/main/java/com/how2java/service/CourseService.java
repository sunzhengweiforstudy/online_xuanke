package com.how2java.service;

import com.how2java.pojo.Course;

import java.util.List;

public interface CourseService {
    List<Course> list();
    Course listbyno(int id);
    void update(Course course);
}

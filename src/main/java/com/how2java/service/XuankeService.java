package com.how2java.service;

import com.how2java.pojo.Course;
import com.how2java.pojo.Xuanke;

import java.util.List;
import java.util.Map;

public interface XuankeService {
    List<Xuanke> selectbystuno(String stuno);
    void delete(Map map);
    void insert(Xuanke xuanke);
    void delete2(int id);
    Xuanke selectbyno(Map map);
}

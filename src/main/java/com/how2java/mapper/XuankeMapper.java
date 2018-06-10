package com.how2java.mapper;

import com.how2java.pojo.Course;
import com.how2java.pojo.Xuanke;

import java.util.List;
import java.util.Map;

public interface XuankeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Xuanke record);

    int insertSelective(Xuanke record);

    Xuanke selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Xuanke record);

    int updateByPrimaryKey(Xuanke record);

    List<Xuanke> selectbystuno(String stuno);

    void deletebyno(Map map);

   Xuanke selectbyno(Map map);
}
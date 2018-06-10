package com.how2java.service.impl;

import com.how2java.mapper.XuankeMapper;
import com.how2java.pojo.Course;
import com.how2java.pojo.Xuanke;
import com.how2java.service.XuankeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class XuankeServiceImpl implements XuankeService {
    @Autowired
    XuankeMapper xuankeMapper;
    @Override
    public List<Xuanke> selectbystuno(String stuno) {
        return xuankeMapper.selectbystuno(stuno);
    }

    @Override
    public void delete(Map map) {
        xuankeMapper.deletebyno(map);
    }

    @Override
    public void insert(Xuanke xuanke) {
        try{
            xuankeMapper.insert(xuanke);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void delete2(int id) {
        xuankeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Xuanke selectbyno(Map map) {
        return xuankeMapper.selectbyno(map);
    }
}

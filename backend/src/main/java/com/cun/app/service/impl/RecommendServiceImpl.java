package com.cun.app.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cun.app.entity.Recommend;
import com.cun.app.mapper.RecommendMapper;
import com.cun.app.service.RecommendService;
import org.springframework.stereotype.Service;

@Service
public class RecommendServiceImpl extends ServiceImpl<RecommendMapper, Recommend> implements RecommendService {

}

package com.cun.app.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cun.app.entity.Details;
import com.cun.app.mapper.DetailsMapper;
import com.cun.app.service.DetailsService;
import com.cun.app.vo.MusicRecommendVO;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl extends ServiceImpl<DetailsMapper, Details> implements DetailsService {

    @Override
    public Page<MusicRecommendVO> getDetailsRecommend(Page<MusicRecommendVO> page) {
        return page.setRecords(this.baseMapper.getDetailsRecommend(page));
    }

}

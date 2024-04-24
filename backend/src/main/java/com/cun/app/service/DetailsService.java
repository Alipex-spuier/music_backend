package com.cun.app.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.cun.app.entity.Details;
import com.cun.app.vo.MusicRecommendVO;

public interface DetailsService extends IService<Details> {

    Page<MusicRecommendVO> getDetailsRecommend(Page<MusicRecommendVO> page);

}

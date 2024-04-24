package com.cun.app.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.cun.app.entity.Details;
import com.cun.app.vo.MusicRecommendVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DetailsMapper extends BaseMapper<Details> {

    @Select("SELECT music_details.*,music_recommend.* FROM music_details,music_recommend WHERE music_details.details_id=music_recommend.recommend_id")
    List<MusicRecommendVO> getDetailsRecommend(Pagination page);

}

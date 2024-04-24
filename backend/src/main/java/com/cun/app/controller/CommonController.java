package com.cun.app.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.cun.app.entity.Details;
import com.cun.app.service.DetailsService;
import com.cun.app.service.RecommendService;
import com.cun.app.vo.MusicRecommendVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/music")
@EnableSwagger2
public class CommonController {

    @Autowired
    DetailsService detailsService;

    @Autowired
    RecommendService recommendService;

    @GetMapping("/getAllMusicByPage/{page}/{size}")
    public Map<String, Object> getAllDetailsByPage(@PathVariable Integer page, @PathVariable Integer size) {
        Map<String, Object> map = new HashMap<>();
        Page<Details> detailsPage = detailsService.selectPage(new Page<>(page, size));
        if (detailsPage.getRecords().size() == 0) {
            map.put("code", 400);
        } else {
            map.put("code", 200);
            map.put("data", detailsPage);
        }
        return map;
    }

    @GetMapping("/getAllMusicWithRecommendByPage/{page}/{size}")
    public Map<String, Object> getAllDetailsWithRecommendByPage(@PathVariable Integer page, @PathVariable Integer size) {
        Map<String, Object> map = new HashMap<>();
        Page<MusicRecommendVO> detailsRecommend = detailsService.getDetailsRecommend(new Page<>(page, size));
        if (detailsRecommend.getRecords().size() == 0) {
            map.put("code", 400);
        } else {
            map.put("code", 200);
            map.put("data", detailsRecommend);
        }
        System.out.println(map);
        return map;
    }

}

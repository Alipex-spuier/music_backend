package com.music.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_recommend")
public class Recommend implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "recommend_id", type = IdType.AUTO)
    private Long recommendId;

    private Double emotionRecommendScore;

    private Double genderRecommendScore;

    private String gender;

    private String emotion;

}

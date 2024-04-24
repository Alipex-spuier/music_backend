package com.cun.app.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

@TableName("music_recommend")
public class Recommend implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "心情推荐主键id")
    @TableId(value = "recommend_id", type = IdType.AUTO)
    private Integer recommendId;

    @ApiModelProperty(value = "心情分数")
    @TableField("emotion_recommend_score")
    private Double emotionRecommendScore;

    @ApiModelProperty(value = "性别分数")
    @TableField("gender_recommend_score")
    private Double genderRecommendScore;

    @ApiModelProperty(value = "歌曲对应心情")
    private String emotion;

    @ApiModelProperty(value = "歌曲对应性别")
    private String gender;

    public Integer getRecommendId() {
        return recommendId;
    }

    public void setRecommendId(Integer recommendId) {
        this.recommendId = recommendId;
    }

    public Double getEmotionRecommendScore() {
        return emotionRecommendScore;
    }

    public void setEmotionRecommendScore(Double emotionRecommendScore) {
        this.emotionRecommendScore = emotionRecommendScore;
    }

    public Double getGenderRecommendScore() {
        return genderRecommendScore;
    }

    public void setGenderRecommendScore(Double genderRecommendScore) {
        this.genderRecommendScore = genderRecommendScore;
    }

    public String getEmotion() {
        return emotion;
    }

    public void setEmotion(String emotion) {
        this.emotion = emotion;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Recommend{" +
                "recommendId=" + recommendId +
                ", emotion_recommend_score=" + emotionRecommendScore +
                ", gender_recommend_score=" + genderRecommendScore +
                ", emotion='" + emotion + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }
}
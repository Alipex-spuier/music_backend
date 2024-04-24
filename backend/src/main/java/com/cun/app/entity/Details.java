package com.cun.app.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;


@TableName("music_details")
public class Details implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "音乐详情主键id")
    @TableId(value = "details_id", type = IdType.AUTO)
    private Integer detailsId;

    @ApiModelProperty(value = "心情推荐外键id")
    @TableField("recommend_id")
    private Integer recommendId;

    @ApiModelProperty(value = "音乐url")
    private String url;

    @ApiModelProperty(value = "音乐图片")
    private String albumCover;

    @ApiModelProperty(value = "音乐作者")
    private String author;
    @ApiModelProperty(value = "歌曲名")
    private String title;

    @ApiModelProperty(value = "热评")
    private String hotComment;
    @ApiModelProperty(value = "热评作者")
    private String commentAuthor;

    public Integer getDetailsId() {
        return detailsId;
    }

    public void setDetailsId(Integer detailsId) {
        this.detailsId = detailsId;
    }

    public Integer getRecommendId() {
        return recommendId;
    }

    public void setRecommendId(Integer recommendId) {
        this.recommendId = recommendId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAlbumCover() {
        return albumCover;
    }

    public void setAlbumCover(String albumCover) {
        this.albumCover = albumCover;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHotComment() {
        return hotComment;
    }

    public void setHotComment(String hotComment) {
        this.hotComment = hotComment;
    }

    public String getCommentAuthor() {
        return commentAuthor;
    }

    public void setCommentAuthor(String commentAuthor) {
        this.commentAuthor = commentAuthor;
    }

    @Override
    public String toString() {
        return "Details{" +
                "detailsId=" + detailsId +
                ", recommendId=" + recommendId +
                ", url='" + url + '\'' +
                ", albumCover='" + albumCover + '\'' +
                ", author='" + author + '\'' +
                ", title='" + title + '\'' +
                ", hotComment='" + hotComment + '\'' +
                ", commentAuthor='" + commentAuthor + '\'' +
                '}';
    }
}
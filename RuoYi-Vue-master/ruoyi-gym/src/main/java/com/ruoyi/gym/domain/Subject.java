package com.ruoyi.gym.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.io.Serializable;

/**
 * 课程管理对象 subject
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Subject implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 课程编号 */
    private Long subId;

    /** 课程名 */
    @Excel(name = "课程名")
    private String subname;

    /** 课程单价 */
    @Excel(name = "课程单价")
    private Long sellingPrice;

    /** 课程单价 */
    @Excel(name = "课程单价")
    private String beginTime;

    /** 课程单价 */
    @Excel(name = "课程单价")
    private String endTime;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;

    public Long getSubId() {
        return subId;
    }

    public void setSubId(Long subId) {
        this.subId = subId;
    }

    public String getSubname() {
        return subname;
    }

    public void setSubname(String subname) {
        this.subname = subname;
    }

    public Long getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(Long sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getModifytime() {
        return modifytime;
    }

    public void setModifytime(String modifytime) {
        this.modifytime = modifytime;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public Long getDeleted() {
        return deleted;
    }

    public void setDeleted(Long deleted) {
        this.deleted = deleted;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
}


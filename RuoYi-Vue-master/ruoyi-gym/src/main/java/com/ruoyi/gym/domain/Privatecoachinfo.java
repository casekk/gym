package com.ruoyi.gym.domain;

import java.io.Serializable;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员私教管理对象 privatecoachinfo
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Privatecoachinfo implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 私教课记录编号 */
    private Long pid;

    /** 会员编号 */
    @Excel(name = "会员编号")
    private Long memberid;
    private String memberName;

    /** 教练编号 */
    @Excel(name = "教练编号")
    private Long coachid;
    private String coachName;

    /** 课程编号 */
    @Excel(name = "课程编号")
    private Long subjectid;
    private String subname;

    /** 购课数量 */
    @Excel(name = "购课数量")
    private Long count;

    /** 购课总价 */
    @Excel(name = "购课总价")
    private Long countprice;

    /** 实收金额 */
    @Excel(name = "实收金额")
    private Long realprice;

    /** 购课日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "购课日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date date;

    /** 课程来源 */
    @Excel(name = "课程来源")
    private Long state;

    /** 备注 */
    @Excel(name = "备注")
    private Long remark;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public Long getMemberid() {
        return memberid;
    }

    public void setMemberid(Long memberid) {
        this.memberid = memberid;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public Long getCoachid() {
        return coachid;
    }

    public void setCoachid(Long coachid) {
        this.coachid = coachid;
    }

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName;
    }

    public Long getSubjectid() {
        return subjectid;
    }

    public void setSubjectid(Long subjectid) {
        this.subjectid = subjectid;
    }

    public String getSubname() {
        return subname;
    }

    public void setSubname(String subname) {
        this.subname = subname;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getCountprice() {
        return countprice;
    }

    public void setCountprice(Long countprice) {
        this.countprice = countprice;
    }

    public Long getRealprice() {
        return realprice;
    }

    public void setRealprice(Long realprice) {
        this.realprice = realprice;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
    }

    public Long getRemark() {
        return remark;
    }

    public void setRemark(Long remark) {
        this.remark = remark;
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
}


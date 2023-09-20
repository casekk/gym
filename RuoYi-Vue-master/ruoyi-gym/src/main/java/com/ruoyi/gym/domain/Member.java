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
 * 会员管理对象 member
 *
 * @author ruoyi
 * @date 2023-09-13
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 会员编号 */
    private Long memberId;

    /** 会员名称 */
    @Excel(name = "会员名称")
    private String memberName;

    /** 会员电话 */
    @Excel(name = "会员电话")
    private String memberPhone;

    /** 会员性别 */
    @Excel(name = "会员性别")
    private String memberSex;

    /** 会员年龄 */
    @Excel(name = "会员年龄")
    private Long memberAge;

    /** 会员卡类型 */
    @Excel(name = "会员卡类型")
    private Long memberTypes;

    /** 成为会员时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "成为会员时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date menberDate;

    /** 会员生日 */
    @Excel(name = "会员生日")
    private String birthday;

    /** 会员状态 */
    @Excel(name = "会员状态")
    private Long memberStatic;

    /** 会员金额 */
    @Excel(name = "会员金额")
    private Long memberbalance;

    /** 续费时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "续费时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date memberxufei;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberPhone() {
        return memberPhone;
    }

    public void setMemberPhone(String memberPhone) {
        this.memberPhone = memberPhone;
    }

    public String getMemberSex() {
        return memberSex;
    }

    public void setMemberSex(String memberSex) {
        this.memberSex = memberSex;
    }

    public Long getMemberAge() {
        return memberAge;
    }

    public void setMemberAge(Long memberAge) {
        this.memberAge = memberAge;
    }

    public Long getMemberTypes() {
        return memberTypes;
    }

    public void setMemberTypes(Long memberTypes) {
        this.memberTypes = memberTypes;
    }

    public Date getMenberDate() {
        return menberDate;
    }

    public void setMenberDate(Date menberDate) {
        this.menberDate = menberDate;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public Long getMemberStatic() {
        return memberStatic;
    }

    public void setMemberStatic(Long memberStatic) {
        this.memberStatic = memberStatic;
    }

    public Long getMemberbalance() {
        return memberbalance;
    }

    public void setMemberbalance(Long memberbalance) {
        this.memberbalance = memberbalance;
    }

    public Date getMemberxufei() {
        return memberxufei;
    }

    public void setMemberxufei(Date memberxufei) {
        this.memberxufei = memberxufei;
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

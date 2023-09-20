package com.ruoyi.gym.domain;

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
 * 充值管理对象 chongzhi
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Chongzhi extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 充值记录编号 */
    private Long id;

    /** 会员编号 */
    @Excel(name = "会员编号")
    private Long memberid;
    private String memberName;

    /** 会员卡编号 */
    @Excel(name = "会员卡编号")
    private Long typeid;
    private String typeName;

    /** 续费金额 */
    @Excel(name = "续费金额")
    private Long money;

    /** 实收金额 */
    @Excel(name = "实收金额")
    private Long ssmoney;

    /** 找零金额 */
    @Excel(name = "找零金额")
    private Long zlmoney;

    /** 续费日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "续费日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date date;

    /** 充值金额 */
    @Excel(name = "充值金额")
    private Long czjine;

    /** 备注 */
    @Excel(name = "备注")
    private String beizhu;

    /** 充值状态 */
    @Excel(name = "充值状态")
    private Long czStatic;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Long getTypeid() {
        return typeid;
    }

    public void setTypeid(Long typeid) {
        this.typeid = typeid;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public Long getSsmoney() {
        return ssmoney;
    }

    public void setSsmoney(Long ssmoney) {
        this.ssmoney = ssmoney;
    }

    public Long getZlmoney() {
        return zlmoney;
    }

    public void setZlmoney(Long zlmoney) {
        this.zlmoney = zlmoney;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getCzjine() {
        return czjine;
    }

    public void setCzjine(Long czjine) {
        this.czjine = czjine;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public Long getCzStatic() {
        return czStatic;
    }

    public void setCzStatic(Long czStatic) {
        this.czStatic = czStatic;
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


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
 * 商品购买信息管理对象 goodinfo
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goodinfo implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 商品购买记录编号 */
    private Long id;

    /** 商品编号 */
    @Excel(name = "商品编号")
    private Long goodsid;
    private String goodsName;

    /** 会员编号 */
    @Excel(name = "会员编号")
    private Long memberid;
    private String memberName;

    /** 购买商品数量 */
    @Excel(name = "购买商品数量")
    private Long count;

    /** 总价 */
    @Excel(name = "总价")
    private Long price;

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Long goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
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

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
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


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
 * 商品管理对象 goods
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goods implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 商品编号 */
    private Long goodsId;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String goodsName;

    /** 单位 */
    @Excel(name = "单位")
    private String unit;

    /** 进价 */
    @Excel(name = "进价")
    private Long unitPrice;

    /** 售价 */
    @Excel(name = "售价")
    private Long sellPrice;

    /** 库存 */
    @Excel(name = "库存")
    private Long inventory;

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

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Long getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Long unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Long getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Long sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Long getInventory() {
        return inventory;
    }

    public void setInventory(Long inventory) {
        this.inventory = inventory;
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


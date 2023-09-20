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
 * 门店管理对象 store
 *
 * @author 魏浩浩
 * @date 2023-09-18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Store implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 门店主键 */
    @Excel(name = "门店主键")
    private Long id;

    /** 门店姓名 */
    @Excel(name = "门店姓名")
    private String name;

    /** 门店编号 */
    @Excel(name = "门店编号")
    private Long num;

    /** 所在城市 */
    @Excel(name = "所在城市")
    private String city;

    /** 省份名称 */
    @Excel(name = "省份名称")
    private String province;

    /** 门店地址 */
    @Excel(name = "门店地址")
    private String address;

    /** 员工数量 */
    @Excel(name = "员工数量")
    private Long quantity;

    /** 店长 */
    @Excel(name = "店长")
    private String shopowner;

    /** 店长电话 */
    @Excel(name = "店长电话")
    private String shopPhone;

    /** 门店简介 */
    @Excel(name = "门店简介")
    private String remarks;

    /** 创建时间 */
    @Excel(name = "创建时间")
    private String createtime;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    /** 删除标记 */
    private Long deleted;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setNum(Long num)
    {
        this.num = num;
    }

    public Long getNum()
    {
        return num;
    }
    public void setCity(String city)
    {
        this.city = city;
    }

    public String getCity()
    {
        return city;
    }
    public void setProvince(String province)
    {
        this.province = province;
    }

    public String getProvince()
    {
        return province;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setQuantity(Long quantity)
    {
        this.quantity = quantity;
    }

    public Long getQuantity()
    {
        return quantity;
    }
    public void setShopowner(String shopowner)
    {
        this.shopowner = shopowner;
    }

    public String getShopowner()
    {
        return shopowner;
    }
    public void setShopPhone(String shopPhone)
    {
        this.shopPhone = shopPhone;
    }

    public String getShopPhone()
    {
        return shopPhone;
    }
    public void setRemarks(String remarks)
    {
        this.remarks = remarks;
    }

    public String getRemarks()
    {
        return remarks;
    }
    public void setModifytime(String modifytime)
    {
        this.modifytime = modifytime;
    }

    public String getModifytime()
    {
        return modifytime;
    }
    public void setDeleted(Long deleted)
    {
        this.deleted = deleted;
    }

    public Long getDeleted()
    {
        return deleted;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}

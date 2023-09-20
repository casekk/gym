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
 * 会员卡管理对象 membertype
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Membertype implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 会员卡类型编号 */
    private Long typeId;

    /** 会员卡名称 */
    @Excel(name = "会员卡名称")
    private String typeName;

    /** 会员卡有效次数 */
    @Excel(name = "会员卡有效次数")
    private Long typeciShu;

    /** 会员卡有效天数 */
    @Excel(name = "会员卡有效天数")
    private Long typeDay;

    /** 售价 */
    @Excel(name = "售价")
    private Long typemoney;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;


    @Excel(name = "会员卡备注")
    private String remarkCard;


    /** 删除标记 */
    private Long deleted;

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Long getTypeciShu() {
        return typeciShu;
    }

    public void setTypeciShu(Long typeciShu) {
        this.typeciShu = typeciShu;
    }

    public Long getTypeDay() {
        return typeDay;
    }

    public void setTypeDay(Long typeDay) {
        this.typeDay = typeDay;
    }

    public Long getTypemoney() {
        return typemoney;
    }

    public void setTypemoney(Long typemoney) {
        this.typemoney = typemoney;
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

    public String getRemarkCard() {
        return remarkCard;
    }

    public void setRemarkCard(String remarkCard) {
        this.remarkCard = remarkCard;
    }
}

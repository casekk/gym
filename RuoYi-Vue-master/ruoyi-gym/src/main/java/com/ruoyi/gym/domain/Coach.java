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
 * 教练管理对象 coach
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Coach implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 教练编号 */
    private Long coachId;

    /** 教练名称 */
    @Excel(name = "教练名称")
    private String coachName;

    /** 教练电话 */
    @Excel(name = "教练电话")
    private String coachPhone;

    /** 教练性别 */
    @Excel(name = "教练性别")
    private String coachSex;

    /** 教练年龄 */
    @Excel(name = "教练年龄")
    private Long coachAge;

    /** 入职时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入职时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date coachData;

    /** 教龄 */
    @Excel(name = "教龄")
    private Long teach;

    /** 工资 */
    @Excel(name = "工资")
    private Long coachWages;

    /** 地址 */
    @Excel(name = "地址")
    private String coachAddress;

    /** 教练状态 */
    @Excel(name = "教练状态")
    private String coachStatic;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;

    public Long getCoachId() {
        return coachId;
    }

    public void setCoachId(Long coachId) {
        this.coachId = coachId;
    }

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName;
    }

    public String getCoachPhone() {
        return coachPhone;
    }

    public void setCoachPhone(String coachPhone) {
        this.coachPhone = coachPhone;
    }

    public String getCoachSex() {
        return coachSex;
    }

    public void setCoachSex(String coachSex) {
        this.coachSex = coachSex;
    }

    public Long getCoachAge() {
        return coachAge;
    }

    public void setCoachAge(Long coachAge) {
        this.coachAge = coachAge;
    }

    public Date getCoachData() {
        return coachData;
    }

    public void setCoachData(Date coachData) {
        this.coachData = coachData;
    }

    public Long getTeach() {
        return teach;
    }

    public void setTeach(Long teach) {
        this.teach = teach;
    }

    public Long getCoachWages() {
        return coachWages;
    }

    public void setCoachWages(Long coachWages) {
        this.coachWages = coachWages;
    }

    public String getCoachAddress() {
        return coachAddress;
    }

    public void setCoachAddress(String coachAddress) {
        this.coachAddress = coachAddress;
    }

    public String getCoachStatic() {
        return coachStatic;
    }

    public void setCoachStatic(String coachStatic) {
        this.coachStatic = coachStatic;
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

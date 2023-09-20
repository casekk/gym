package com.ruoyi.gym.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.ruoyi.common.annotation.Excel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Equipment implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 器材编号 */
    private Long eqId;

    /** 器材名 */
    @Excel(name = "器材名")
    private String eqName;

    /** 器材数量 */
    @Excel(name = "器材数量")
    private String num;

    /** 器材说明 */
    @Excel(name = "器材说明")
    private String eqText;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private String modifytime;

    /** 创建时间 */
    @Excel(name = "创建时间")
    private String createtime;

    /** 删除标记 */
    private Long deleted;

    public Long getEqId() {
        return eqId;
    }

    public void setEqId(Long eqId) {
        this.eqId = eqId;
    }

    public String getEqName() {
        return eqName;
    }

    public void setEqName(String eqName) {
        this.eqName = eqName;
    }

    public String getEqText() {
        return eqText;
    }

    public void setEqText(String eqText) {
        this.eqText = eqText;
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

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
}

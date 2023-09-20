package com.ruoyi.gym.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.gym.domain.Equipment;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 器材管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Repository
public interface EquipmentMapper
{
    /**
     * 查询器材管理
     *
     * @param eqId 器材管理主键
     * @return 器材管理
     */
    public Equipment selectEquipmentByEqId(Long eqId);

    /**
     * 查询器材管理列表
     *
     * @param equipment 器材管理
     * @return 器材管理集合
     */
    public List<Equipment> selectEquipmentList(Equipment equipment);

    /**
     * 新增器材管理
     *
     * @param equipment 器材管理
     * @return 结果
     */
    public int insertEquipment(Equipment equipment);

    /**
     * 修改器材管理
     *
     * @param equipment 器材管理
     * @return 结果
     */
    public int updateEquipment(Equipment equipment);

    /**
     * 删除器材管理
     *
     * @param eqId 器材管理主键
     * @return 结果
     */
    public int deleteEquipmentByEqId(Long eqId);

    /**
     * 批量删除器材管理
     *
     * @param eqIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEquipmentByEqIds(Long[] eqIds);

    List<Equipment> getEquipmentCount();
}


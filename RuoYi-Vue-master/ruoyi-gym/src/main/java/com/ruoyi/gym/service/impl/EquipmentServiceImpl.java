package com.ruoyi.gym.service.impl;

import com.ruoyi.gym.domain.Equipment;
import com.ruoyi.gym.mapper.EquipmentMapper;
import com.ruoyi.gym.service.IEquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 器材管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class EquipmentServiceImpl implements IEquipmentService
{
    @Autowired
    private EquipmentMapper equipmentMapper;

    /**
     * 查询器材管理
     *
     * @param eqId 器材管理主键
     * @return 器材管理
     */
    @Override
    public Equipment selectEquipmentByEqId(Long eqId)
    {
        return equipmentMapper.selectEquipmentByEqId(eqId);
    }

    /**
     * 查询器材管理列表
     *
     * @param equipment 器材管理
     * @return 器材管理
     */
    @Override
    public List<Equipment> selectEquipmentList(Equipment equipment)
    {

        return equipmentMapper.selectEquipmentList(equipment);
    }

    /**
     * 新增器材管理
     *
     * @param equipment 器材管理
     * @return 结果
     */
    @Override
    public int insertEquipment(Equipment equipment)
    {
        return equipmentMapper.insertEquipment(equipment);
    }

    /**
     * 修改器材管理
     *
     * @param equipment 器材管理
     * @return 结果
     */
    @Override
    public int updateEquipment(Equipment equipment)
    {
        return equipmentMapper.updateEquipment(equipment);
    }

    /**
     * 批量删除器材管理
     *
     * @param eqIds 需要删除的器材管理主键
     * @return 结果
     */
    @Override
    public int deleteEquipmentByEqIds(Long[] eqIds)
    {
        return equipmentMapper.deleteEquipmentByEqIds(eqIds);
    }

    /**
     * 删除器材管理信息
     *
     * @param eqId 器材管理主键
     * @return 结果
     */
    @Override
    public int deleteEquipmentByEqId(Long eqId)
    {
        return equipmentMapper.deleteEquipmentByEqId(eqId);
    }

    @Override
    public List<Equipment> getEquipmentCount() {
        return equipmentMapper.getEquipmentCount();
    }
}

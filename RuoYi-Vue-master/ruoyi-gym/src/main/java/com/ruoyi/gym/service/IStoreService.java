package com.ruoyi.gym.service;

import java.util.List;

import com.ruoyi.gym.bo.StatisticBo;
import com.ruoyi.gym.domain.Store;

/**
 * 门店管理Service接口
 *
 * @author 魏浩浩
 * @date 2023-09-18
 */
public interface IStoreService
{
    /**
     * 查询门店管理
     *
     * @param id 门店管理主键
     * @return 门店管理
     */
    public Store selectStoreById(Long id);

    /**
     * 查询门店管理列表
     *
     * @param store 门店管理
     * @return 门店管理集合
     */
    public List<Store> selectStoreList(Store store);

    /**
     * 新增门店管理
     *
     * @param store 门店管理
     * @return 结果
     */
    public int insertStore(Store store);

    /**
     * 修改门店管理
     *
     * @param store 门店管理
     * @return 结果
     */
    public int updateStore(Store store);

    /**
     * 批量删除门店管理
     *
     * @param ids 需要删除的门店管理主键集合
     * @return 结果
     */
    public int deleteStoreByIds(Long[] ids);

    /**
     * 删除门店管理信息
     *
     * @param id 门店管理主键
     * @return 结果
     */
    public int deleteStoreById(Long id);

    List<StatisticBo> getProvinceStoreCount();
}

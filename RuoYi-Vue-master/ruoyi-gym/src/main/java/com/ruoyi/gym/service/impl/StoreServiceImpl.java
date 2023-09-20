package com.ruoyi.gym.service.impl;

import java.util.List;

import com.ruoyi.gym.bo.StatisticBo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.StoreMapper;
import com.ruoyi.gym.domain.Store;
import com.ruoyi.gym.service.IStoreService;

/**
 * 门店管理Service业务层处理
 *
 * @author 魏浩浩
 * @date 2023-09-18
 */
@Service
public class StoreServiceImpl implements IStoreService
{
    @Autowired
    private StoreMapper storeMapper;

    /**
     * 查询门店管理
     *
     * @param id 门店管理主键
     * @return 门店管理
     */
    @Override
    public Store selectStoreById(Long id)
    {
        return storeMapper.selectStoreById(id);
    }

    /**
     * 查询门店管理列表
     *
     * @param store 门店管理
     * @return 门店管理
     */
    @Override
    public List<Store> selectStoreList(Store store)
    {
        return storeMapper.selectStoreList(store);
    }

    /**
     * 新增门店管理
     *
     * @param store 门店管理
     * @return 结果
     */
    @Override
    public int insertStore(Store store)
    {
        return storeMapper.insertStore(store);
    }

    /**
     * 修改门店管理
     *
     * @param store 门店管理
     * @return 结果
     */
    @Override
    public int updateStore(Store store)
    {
        return storeMapper.updateStore(store);
    }

    /**
     * 批量删除门店管理
     *
     * @param ids 需要删除的门店管理主键
     * @return 结果
     */
    @Override
    public int deleteStoreByIds(Long[] ids)
    {
        return storeMapper.deleteStoreByIds(ids);
    }

    /**
     * 删除门店管理信息
     *
     * @param id 门店管理主键
     * @return 结果
     */
    @Override
    public int deleteStoreById(Long id)
    {
        return storeMapper.deleteStoreById(id);
    }

    @Override
    public List<StatisticBo> getProvinceStoreCount() {
        return storeMapper.getProvinceStoreCount();
    }
}

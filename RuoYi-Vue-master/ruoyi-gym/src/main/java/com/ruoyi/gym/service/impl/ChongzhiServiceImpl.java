package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.ChongzhiMapper;
import com.ruoyi.gym.domain.Chongzhi;
import com.ruoyi.gym.service.IChongzhiService;

/**
 * 充值管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class ChongzhiServiceImpl implements IChongzhiService
{
    @Autowired
    private ChongzhiMapper chongzhiMapper;

    /**
     * 查询充值管理
     *
     * @param id 充值管理主键
     * @return 充值管理
     */
    @Override
    public Chongzhi selectChongzhiById(Long id)
    {
        return chongzhiMapper.selectChongzhiById(id);
    }

    /**
     * 查询充值管理列表
     *
     * @param chongzhi 充值管理
     * @return 充值管理
     */
    @Override
    public List<Chongzhi> selectChongzhiList(Chongzhi chongzhi)
    {
        return chongzhiMapper.selectChongzhiList(chongzhi);
    }

    /**
     * 新增充值管理
     *
     * @param chongzhi 充值管理
     * @return 结果
     */
    @Override
    public int insertChongzhi(Chongzhi chongzhi)
    {
        return chongzhiMapper.insertChongzhi(chongzhi);
    }

    /**
     * 修改充值管理
     *
     * @param chongzhi 充值管理
     * @return 结果
     */
    @Override
    public int updateChongzhi(Chongzhi chongzhi)
    {
        return chongzhiMapper.updateChongzhi(chongzhi);
    }

    /**
     * 批量删除充值管理
     *
     * @param ids 需要删除的充值管理主键
     * @return 结果
     */
    @Override
    public int deleteChongzhiByIds(Long[] ids)
    {
        return chongzhiMapper.deleteChongzhiByIds(ids);
    }

    /**
     * 删除充值管理信息
     *
     * @param id 充值管理主键
     * @return 结果
     */
    @Override
    public int deleteChongzhiById(Long id)
    {
        return chongzhiMapper.deleteChongzhiById(id);
    }
}


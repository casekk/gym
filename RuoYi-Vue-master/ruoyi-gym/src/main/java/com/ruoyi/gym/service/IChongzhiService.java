package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Chongzhi;

/**
 * 充值管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface IChongzhiService
{
    /**
     * 查询充值管理
     *
     * @param id 充值管理主键
     * @return 充值管理
     */
    public Chongzhi selectChongzhiById(Long id);

    /**
     * 查询充值管理列表
     *
     * @param chongzhi 充值管理
     * @return 充值管理集合
     */
    public List<Chongzhi> selectChongzhiList(Chongzhi chongzhi);

    /**
     * 新增充值管理
     *
     * @param chongzhi 充值管理
     * @return 结果
     */
    public int insertChongzhi(Chongzhi chongzhi);

    /**
     * 修改充值管理
     *
     * @param chongzhi 充值管理
     * @return 结果
     */
    public int updateChongzhi(Chongzhi chongzhi);

    /**
     * 批量删除充值管理
     *
     * @param ids 需要删除的充值管理主键集合
     * @return 结果
     */
    public int deleteChongzhiByIds(Long[] ids);

    /**
     * 删除充值管理信息
     *
     * @param id 充值管理主键
     * @return 结果
     */
    public int deleteChongzhiById(Long id);
}


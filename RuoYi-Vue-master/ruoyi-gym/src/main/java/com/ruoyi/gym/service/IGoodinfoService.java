package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Goodinfo;

/**
 * 商品购买信息管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface IGoodinfoService
{
    /**
     * 查询商品购买信息管理
     *
     * @param id 商品购买信息管理主键
     * @return 商品购买信息管理
     */
    public Goodinfo selectGoodinfoById(Long id);

    /**
     * 查询商品购买信息管理列表
     *
     * @param goodinfo 商品购买信息管理
     * @return 商品购买信息管理集合
     */
    public List<Goodinfo> selectGoodinfoList(Goodinfo goodinfo);

    /**
     * 新增商品购买信息管理
     *
     * @param goodinfo 商品购买信息管理
     * @return 结果
     */
    public int insertGoodinfo(Goodinfo goodinfo);

    /**
     * 修改商品购买信息管理
     *
     * @param goodinfo 商品购买信息管理
     * @return 结果
     */
    public int updateGoodinfo(Goodinfo goodinfo);

    /**
     * 批量删除商品购买信息管理
     *
     * @param ids 需要删除的商品购买信息管理主键集合
     * @return 结果
     */
    public int deleteGoodinfoByIds(Long[] ids);

    /**
     * 删除商品购买信息管理信息
     *
     * @param id 商品购买信息管理主键
     * @return 结果
     */
    public int deleteGoodinfoById(Long id);
}

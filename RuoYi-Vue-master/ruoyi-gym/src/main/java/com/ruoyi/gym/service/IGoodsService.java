package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Goods;

/**
 * 商品管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface IGoodsService
{
    /**
     * 查询商品管理
     *
     * @param goodsId 商品管理主键
     * @return 商品管理
     */
    public Goods selectGoodsByGoodsId(Long goodsId);

    /**
     * 查询商品管理列表
     *
     * @param goods 商品管理
     * @return 商品管理集合
     */
    public List<Goods> selectGoodsList(Goods goods);

    /**
     * 新增商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    public int insertGoods(Goods goods);

    /**
     * 修改商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    public int updateGoods(Goods goods);

    /**
     * 批量删除商品管理
     *
     * @param goodsIds 需要删除的商品管理主键集合
     * @return 结果
     */
    public int deleteGoodsByGoodsIds(Long[] goodsIds);

    /**
     * 删除商品管理信息
     *
     * @param goodsId 商品管理主键
     * @return 结果
     */
    public int deleteGoodsByGoodsId(Long goodsId);

    List<Goods> getAllGoods();
}

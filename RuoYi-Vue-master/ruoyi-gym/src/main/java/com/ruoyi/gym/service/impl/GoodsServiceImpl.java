package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.GoodsMapper;
import com.ruoyi.gym.domain.Goods;
import com.ruoyi.gym.service.IGoodsService;

/**
 * 商品管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class GoodsServiceImpl implements IGoodsService
{
    @Autowired
    private GoodsMapper goodsMapper;

    /**
     * 查询商品管理
     *
     * @param goodsId 商品管理主键
     * @return 商品管理
     */
    @Override
    public Goods selectGoodsByGoodsId(Long goodsId)
    {
        return goodsMapper.selectGoodsByGoodsId(goodsId);
    }

    /**
     * 查询商品管理列表
     *
     * @param goods 商品管理
     * @return 商品管理
     */
    @Override
    public List<Goods> selectGoodsList(Goods goods)
    {
        return goodsMapper.selectGoodsList(goods);
    }

    /**
     * 新增商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    @Override
    public int insertGoods(Goods goods)
    {
        return goodsMapper.insertGoods(goods);
    }

    /**
     * 修改商品管理
     *
     * @param goods 商品管理
     * @return 结果
     */
    @Override
    public int updateGoods(Goods goods)
    {
        return goodsMapper.updateGoods(goods);
    }

    /**
     * 批量删除商品管理
     *
     * @param goodsIds 需要删除的商品管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodsByGoodsIds(Long[] goodsIds)
    {
        return goodsMapper.deleteGoodsByGoodsIds(goodsIds);
    }

    /**
     * 删除商品管理信息
     *
     * @param goodsId 商品管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodsByGoodsId(Long goodsId)
    {
        return goodsMapper.deleteGoodsByGoodsId(goodsId);
    }

    @Override
    public List<Goods> getAllGoods() {
        return goodsMapper.getAllGoods();
    }
}


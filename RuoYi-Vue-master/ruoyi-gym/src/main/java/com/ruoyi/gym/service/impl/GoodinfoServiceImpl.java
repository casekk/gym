package com.ruoyi.gym.service.impl;

import java.util.List;

import com.ruoyi.gym.domain.Goods;
import com.ruoyi.gym.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.GoodinfoMapper;
import com.ruoyi.gym.domain.Goodinfo;
import com.ruoyi.gym.service.IGoodinfoService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 商品购买信息管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class GoodinfoServiceImpl implements IGoodinfoService
{
    @Autowired
    private GoodinfoMapper goodinfoMapper;
    @Autowired
    private IGoodsService goodsService;

    /**
     * 查询商品购买信息管理
     *
     * @param id 商品购买信息管理主键
     * @return 商品购买信息管理
     */
    @Override
    public Goodinfo selectGoodinfoById(Long id)
    {
        return goodinfoMapper.selectGoodinfoById(id);
    }

    /**
     * 查询商品购买信息管理列表
     *
     * @param goodinfo 商品购买信息管理
     * @return 商品购买信息管理
     */
    @Override
    public List<Goodinfo> selectGoodinfoList(Goodinfo goodinfo)
    {
        return goodinfoMapper.selectGoodinfoList(goodinfo);
    }

    /**
     * 新增商品购买信息管理
     *
     * @param goodinfo 商品购买信息管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertGoodinfo(Goodinfo goodinfo)
    {
        Goods goods = goodsService.selectGoodsByGoodsId(goodinfo.getGoodsid());
        if(goods.getInventory()>=goodinfo.getCount()){
            goods.setInventory(goods.getInventory()-goodinfo.getCount());
            goodsService.updateGoods(goods);
        }else{

            return 0;
        }
        return goodinfoMapper.insertGoodinfo(goodinfo);
    }

    /**
     * 修改商品购买信息管理
     *
     * @param goodinfo 商品购买信息管理
     * @return 结果
     */
    @Override
    public int updateGoodinfo(Goodinfo goodinfo)
    {
        return goodinfoMapper.updateGoodinfo(goodinfo);
    }

    /**
     * 批量删除商品购买信息管理
     *
     * @param ids 需要删除的商品购买信息管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodinfoByIds(Long[] ids)
    {
        return goodinfoMapper.deleteGoodinfoByIds(ids);
    }

    /**
     * 删除商品购买信息管理信息
     *
     * @param id 商品购买信息管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodinfoById(Long id)
    {
        return goodinfoMapper.deleteGoodinfoById(id);
    }
}

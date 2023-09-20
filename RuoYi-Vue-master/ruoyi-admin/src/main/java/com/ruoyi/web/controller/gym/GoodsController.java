package com.ruoyi.web.controller.gym;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.gym.domain.Goods;
import com.ruoyi.gym.service.IGoodsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商品管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/goods/goods")
public class GoodsController extends BaseController
{
    @Autowired
    private IGoodsService goodsService;

    /**
     * 查询商品管理列表
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:list')")
    @GetMapping("/list")
    public TableDataInfo list(Goods goods)
    {
        startPage();
        List<Goods> list = goodsService.selectGoodsList(goods);
        return getDataTable(list);
    }

    /**
     * 导出商品管理列表
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:export')")
    @Log(title = "商品管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Goods goods)
    {
        List<Goods> list = goodsService.selectGoodsList(goods);
        ExcelUtil<Goods> util = new ExcelUtil<Goods>(Goods.class);
        util.exportExcel(response, list, "商品管理数据");
    }

    /**
     * 获取商品管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:query')")
    @GetMapping(value = "/{goodsId}")
    public AjaxResult getInfo(@PathVariable("goodsId") Long goodsId)
    {
        return success(goodsService.selectGoodsByGoodsId(goodsId));
    }

    /**
     * 获取商品管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:getAllGoods')")
    @GetMapping(value = "/getAllGoods")
    public AjaxResult getAllGoods()
    {
        return success(goodsService.getAllGoods());
    }

    /**
     * 新增商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:add')")
    @Log(title = "商品管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Goods goods)
    {
        goods.setCreatetime(DateUtils.getTime());
        return toAjax(goodsService.insertGoods(goods));
    }

    /**
     * 修改商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:edit')")
    @Log(title = "商品管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Goods goods)
    {
        goods.setModifytime(DateUtils.getTime());
        return toAjax(goodsService.updateGoods(goods));
    }

    /**
     * 删除商品管理
     */
    @PreAuthorize("@ss.hasPermi('goods:goods:remove')")
    @Log(title = "商品管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{goodsIds}")
    public AjaxResult remove(@PathVariable Long[] goodsIds)
    {
        return toAjax(goodsService.deleteGoodsByGoodsIds(goodsIds));
    }
}


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
import com.ruoyi.gym.domain.Goodinfo;
import com.ruoyi.gym.service.IGoodinfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商品购买信息管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/goodinfo/goodinfo")
public class GoodinfoController extends BaseController
{
    @Autowired
    private IGoodinfoService goodinfoService;

    /**
     * 查询商品购买信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(Goodinfo goodinfo)
    {
        startPage();
        List<Goodinfo> list = goodinfoService.selectGoodinfoList(goodinfo);
        return getDataTable(list);
    }

    /**
     * 导出商品购买信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:export')")
    @Log(title = "商品购买信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Goodinfo goodinfo)
    {
        List<Goodinfo> list = goodinfoService.selectGoodinfoList(goodinfo);
        ExcelUtil<Goodinfo> util = new ExcelUtil<Goodinfo>(Goodinfo.class);
        util.exportExcel(response, list, "商品购买信息管理数据");
    }

    /**
     * 获取商品购买信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(goodinfoService.selectGoodinfoById(id));
    }

    /**
     * 新增商品购买信息管理
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:add')")
    @Log(title = "商品购买信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Goodinfo goodinfo)
    {
        goodinfo.setCreatetime(DateUtils.getTime());
        return toAjax(goodinfoService.insertGoodinfo(goodinfo));
    }

    /**
     * 修改商品购买信息管理
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:edit')")
    @Log(title = "商品购买信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Goodinfo goodinfo)
    {
        goodinfo.setModifytime(DateUtils.getTime());
        return toAjax(goodinfoService.updateGoodinfo(goodinfo));
    }

    /**
     * 删除商品购买信息管理
     */
    @PreAuthorize("@ss.hasPermi('goodinfo:goodinfo:remove')")
    @Log(title = "商品购买信息管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(goodinfoService.deleteGoodinfoByIds(ids));
    }
}


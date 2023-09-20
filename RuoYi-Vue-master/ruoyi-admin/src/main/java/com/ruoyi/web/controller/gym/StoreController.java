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
import com.ruoyi.gym.domain.Store;
import com.ruoyi.gym.service.IStoreService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 门店管理Controller
 *
 * @author 魏浩浩
 * @date 2023-09-18
 */
@RestController
@RequestMapping("/store/store")
public class StoreController extends BaseController
{
    @Autowired
    private IStoreService storeService;

    /**
     * 查询门店管理列表
     */
    @PreAuthorize("@ss.hasPermi('store:store:list')")
    @GetMapping("/list")
    public TableDataInfo list(Store store)
    {
        startPage();
        List<Store> list = storeService.selectStoreList(store);
        return getDataTable(list);
    }


    @PreAuthorize("@ss.hasPermi('store:store:getProvinceStoreCount')")
    @GetMapping(value = "/getProvinceStoreCount")
    public AjaxResult getProvinceStoreCount()
    {
        return success(storeService.getProvinceStoreCount());
    }

    /**
     * 导出门店管理列表
     */
    @PreAuthorize("@ss.hasPermi('store:store:export')")
    @Log(title = "门店管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Store store)
    {
        List<Store> list = storeService.selectStoreList(store);
        ExcelUtil<Store> util = new ExcelUtil<Store>(Store.class);
        util.exportExcel(response, list, "门店管理数据");
    }

    /**
     * 获取门店管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('store:store:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(storeService.selectStoreById(id));
    }

    /**
     * 新增门店管理
     */
    @PreAuthorize("@ss.hasPermi('store:store:add')")
    @Log(title = "门店管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Store store){
        store.setCreatetime(DateUtils.getTime());
        return toAjax(storeService.insertStore(store));
    }

    /**
     * 修改门店管理
     */
    @PreAuthorize("@ss.hasPermi('store:store:edit')")
    @Log(title = "门店管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Store store)
    {
        store.setModifytime(DateUtils.getTime());
        return toAjax(storeService.updateStore(store));
    }

    /**
     * 删除门店管理
     */
    @PreAuthorize("@ss.hasPermi('store:store:remove')")
    @Log(title = "门店管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(storeService.deleteStoreByIds(ids));
    }
}

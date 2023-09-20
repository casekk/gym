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
import com.ruoyi.gym.domain.Privatecoachinfo;
import com.ruoyi.gym.service.IPrivatecoachinfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员私教管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/privatecoachinfo/privatecoachinfo")
public class PrivatecoachinfoController extends BaseController
{
    @Autowired
    private IPrivatecoachinfoService privatecoachinfoService;

    /**
     * 查询会员私教管理列表
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(Privatecoachinfo privatecoachinfo)
    {
        startPage();
        List<Privatecoachinfo> list = privatecoachinfoService.selectPrivatecoachinfoList(privatecoachinfo);
        return getDataTable(list);
    }

    /**
     * 导出会员私教管理列表
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:export')")
    @Log(title = "会员私教管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Privatecoachinfo privatecoachinfo)
    {
        List<Privatecoachinfo> list = privatecoachinfoService.selectPrivatecoachinfoList(privatecoachinfo);
        ExcelUtil<Privatecoachinfo> util = new ExcelUtil<Privatecoachinfo>(Privatecoachinfo.class);
        util.exportExcel(response, list, "会员私教管理数据");
    }

    /**
     * 获取会员私教管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:query')")
    @GetMapping(value = "/{pid}")
    public AjaxResult getInfo(@PathVariable("pid") Long pid)
    {
        return success(privatecoachinfoService.selectPrivatecoachinfoByPid(pid));
    }

    /**
     * 新增会员私教管理
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:add')")
    @Log(title = "会员私教管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Privatecoachinfo privatecoachinfo)
    {
        privatecoachinfo.setCreatetime(DateUtils.getTime());
        return toAjax(privatecoachinfoService.insertPrivatecoachinfo(privatecoachinfo));
    }

    /**
     * 修改会员私教管理
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:edit')")
    @Log(title = "会员私教管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Privatecoachinfo privatecoachinfo)
    {
        privatecoachinfo.setModifytime(DateUtils.getTime());
        return toAjax(privatecoachinfoService.updatePrivatecoachinfo(privatecoachinfo));
    }

    /**
     * 删除会员私教管理
     */
    @PreAuthorize("@ss.hasPermi('privatecoachinfo:privatecoachinfo:remove')")
    @Log(title = "会员私教管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{pids}")
    public AjaxResult remove(@PathVariable Long[] pids)
    {
        return toAjax(privatecoachinfoService.deletePrivatecoachinfoByPids(pids));
    }
}


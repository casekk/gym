package com.ruoyi.web.controller.gym;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
import com.ruoyi.gym.domain.Equipment;
import com.ruoyi.gym.service.IEquipmentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 器材管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/equipment/equipment")
public class EquipmentController extends BaseController
{
    @Autowired
    private IEquipmentService equipmentService;

    /**
     * 查询器材管理列表
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:list')")
    @GetMapping("/list")
    public TableDataInfo list(Equipment equipment)
    {
        startPage();
        List<Equipment> list = equipmentService.selectEquipmentList(equipment);
        return getDataTable(list);
    }

    /**
     * 导出器材管理列表
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:export')")
    @Log(title = "器材管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Equipment equipment)
    {
        List<Equipment> list = equipmentService.selectEquipmentList(equipment);
        ExcelUtil<Equipment> util = new ExcelUtil<Equipment>(Equipment.class);
        util.exportExcel(response, list, "器材管理数据");
    }

    /**
     * 获取器材管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:query')")
    @GetMapping(value = "/{eqId}")
    public AjaxResult getInfo(@PathVariable("eqId") Long eqId)
    {
        return success(equipmentService.selectEquipmentByEqId(eqId));
    }


    // 获取不同器材的数量
    @PreAuthorize("@ss.hasPermi('equipment:equipment:getEquipmentCount')")
    @GetMapping(value = "/getEquipmentCount")
    public AjaxResult getEquipmentCount()
    {
        return success(equipmentService.getEquipmentCount());
    }

    /**
     * 新增器材管理
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:add')")
    @Log(title = "器材管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Equipment equipment)
    {
        equipment.setCreatetime(DateUtils.getTime());
        return toAjax(equipmentService.insertEquipment(equipment));
    }

    /**
     * 修改器材管理
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:edit')")
    @Log(title = "器材管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Equipment equipment)
    {
        equipment.setModifytime(DateUtils.getTime());
        return toAjax(equipmentService.updateEquipment(equipment));
    }

    /**
     * 删除器材管理
     */
    @PreAuthorize("@ss.hasPermi('equipment:equipment:remove')")
    @Log(title = "器材管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{eqIds}")
    public AjaxResult remove(@PathVariable Long[] eqIds)
    {
        return toAjax(equipmentService.deleteEquipmentByEqIds(eqIds));
    }
}

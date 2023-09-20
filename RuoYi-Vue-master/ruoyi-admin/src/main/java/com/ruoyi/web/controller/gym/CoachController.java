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
import com.ruoyi.gym.domain.Coach;
import com.ruoyi.gym.service.ICoachService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教练管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/coach/coach")
public class CoachController extends BaseController
{
    @Autowired
    private ICoachService coachService;

    /**
     * 查询教练管理列表
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:list')")
    @GetMapping("/list")
    public TableDataInfo list(Coach coach)
    {
        startPage();
        List<Coach> list = coachService.selectCoachList(coach);
        return getDataTable(list);
    }

    /**
     * 导出教练管理列表
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:export')")
    @Log(title = "教练管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Coach coach)
    {
        List<Coach> list = coachService.selectCoachList(coach);
        ExcelUtil<Coach> util = new ExcelUtil<Coach>(Coach.class);
        util.exportExcel(response, list, "教练管理数据");
    }

    /**
     * 获取教练管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:query')")
    @GetMapping(value = "/{coachId}")
    public AjaxResult getInfo(@PathVariable("coachId") Long coachId)
    {
        return success(coachService.selectCoachByCoachId(coachId));
    }


    /**
     * 获取教练管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:getAllCoaches')")
    @GetMapping(value = "/getAllCoaches")
    public AjaxResult getAllCoaches()
    {
        return success(coachService.getAllCoaches());
    }
    /**
     * 新增教练管理
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:add')")
    @Log(title = "教练管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Coach coach)
    {
        coach.setCreatetime(DateUtils.getTime());
        return toAjax(coachService.insertCoach(coach));
    }

    /**
     * 修改教练管理
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:edit')")
    @Log(title = "教练管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Coach coach)
    {
        coach.setModifytime(DateUtils.getTime());
        return toAjax(coachService.updateCoach(coach));
    }

    /**
     * 删除教练管理
     */
    @PreAuthorize("@ss.hasPermi('coach:coach:remove')")
    @Log(title = "教练管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{coachIds}")
    public AjaxResult remove(@PathVariable Long[] coachIds)
    {
        return toAjax(coachService.deleteCoachByCoachIds(coachIds));
    }
}

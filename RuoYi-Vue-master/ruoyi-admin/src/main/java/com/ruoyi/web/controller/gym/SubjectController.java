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
import com.ruoyi.gym.domain.Subject;
import com.ruoyi.gym.service.ISubjectService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课程管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/subject/subject")
public class SubjectController extends BaseController
{
    @Autowired
    private ISubjectService subjectService;

    /**
     * 查询课程管理列表
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:list')")
    @GetMapping("/list")
    public TableDataInfo list(Subject subject)
    {
        startPage();
        List<Subject> list = subjectService.selectSubjectList(subject);
        return getDataTable(list);
    }

    /**
     * 导出课程管理列表
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:export')")
    @Log(title = "课程管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Subject subject)
    {
        List<Subject> list = subjectService.selectSubjectList(subject);
        ExcelUtil<Subject> util = new ExcelUtil<Subject>(Subject.class);
        util.exportExcel(response, list, "课程管理数据");
    }

    /**
     * 获取课程管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:query')")
    @GetMapping(value = "/{subId}")
    public AjaxResult getInfo(@PathVariable("subId") Long subId)
    {
        return success(subjectService.selectSubjectBySubId(subId));
    }

    /**
     * 获取课程管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:getAllSubjects')")
    @GetMapping(value = "/getAllSubjects")
    public AjaxResult getAllSubjects()
    {
        return success(subjectService.getAllSubjects());
    }
    /**
     * 新增课程管理
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:add')")
    @Log(title = "课程管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Subject subject)
    {
        subject.setCreatetime(DateUtils.getTime());
        return toAjax(subjectService.insertSubject(subject));
    }

    /**
     * 修改课程管理
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:edit')")
    @Log(title = "课程管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Subject subject)
    {
        subject.setModifytime(DateUtils.getTime());
        return toAjax(subjectService.updateSubject(subject));
    }

    /**
     * 删除课程管理
     */
    @PreAuthorize("@ss.hasPermi('subject:subject:remove')")
    @Log(title = "课程管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{subIds}")
    public AjaxResult remove(@PathVariable Long[] subIds)
    {
        return toAjax(subjectService.deleteSubjectBySubIds(subIds));
    }
}


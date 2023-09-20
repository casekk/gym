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
import com.ruoyi.gym.domain.Membertype;
import com.ruoyi.gym.service.IMembertypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员卡管理Controller
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@RestController
@RequestMapping("/membertype/membertype")
public class MembertypeController extends BaseController
{
    @Autowired
    private IMembertypeService membertypeService;

    /**
     * 查询会员卡管理列表
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:list')")
    @GetMapping("/list")
    public TableDataInfo list(Membertype membertype)
    {
        startPage();
        List<Membertype> list = membertypeService.selectMembertypeList(membertype);
        return getDataTable(list);
    }

    /**
     * 导出会员卡管理列表
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:export')")
    @Log(title = "会员卡管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Membertype membertype)
    {
        List<Membertype> list = membertypeService.selectMembertypeList(membertype);
        ExcelUtil<Membertype> util = new ExcelUtil<Membertype>(Membertype.class);
        util.exportExcel(response, list, "会员卡管理数据");
    }

    /**
     * 获取会员卡管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:query')")
    @GetMapping(value = "/{typeId}")
    public AjaxResult getInfo(@PathVariable("typeId") Long typeId)
    {
        return success(membertypeService.selectMembertypeByTypeId(typeId));
    }


    /**
     * 查询所有会员卡信息
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:getAllTypes')")
    @GetMapping(value = "/getAllTypes")
    public AjaxResult getAllTypes()
    {
        return success(membertypeService.getAllTypes());
    }
    /**
     * 新增会员卡管理
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:add')")
    @Log(title = "会员卡管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Membertype membertype)
    {
        membertype.setCreatetime(DateUtils.getTime());
        return toAjax(membertypeService.insertMembertype(membertype));
    }

    /**
     * 修改会员卡管理
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:edit')")
    @Log(title = "会员卡管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Membertype membertype)
    {
        membertype.setModifytime(DateUtils.getTime());
        return toAjax(membertypeService.updateMembertype(membertype));
    }

    /**
     * 删除会员卡管理
     */
    @PreAuthorize("@ss.hasPermi('membertype:membertype:remove')")
    @Log(title = "会员卡管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{typeIds}")
    public AjaxResult remove(@PathVariable Long[] typeIds)
    {
        return toAjax(membertypeService.deleteMembertypeByTypeIds(typeIds));
    }
}

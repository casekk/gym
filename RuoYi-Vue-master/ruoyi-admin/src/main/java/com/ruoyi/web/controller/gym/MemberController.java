package com.ruoyi.gym.controller;

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
import com.ruoyi.gym.domain.Member;
import com.ruoyi.gym.service.IMemberService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员管理Controller
 *
 * @author ruoyi
 * @date 2023-09-13
 */
@RestController
@RequestMapping("/member/member")
public class MemberController extends BaseController
{
    @Autowired
    private IMemberService memberService;

    /**
     * 查询会员管理列表
     */
    @PreAuthorize("@ss.hasPermi('member:member:list')")
    @GetMapping("/list")
    public TableDataInfo list(Member member)
    {
        startPage();
        List<Member> list = memberService.selectMemberList(member);
        return getDataTable(list);
    }

    /**
     * 导出会员管理列表
     */
    @PreAuthorize("@ss.hasPermi('member:member:export')")
    @Log(title = "会员管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Member member)
    {
        List<Member> list = memberService.selectMemberList(member);
        ExcelUtil<Member> util = new ExcelUtil<Member>(Member.class);
        util.exportExcel(response, list, "会员管理数据");
    }

    /**
     * 获取会员管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('member:member:query')")
    @GetMapping(value = "/{memberId}")
    public AjaxResult getInfo(@PathVariable("memberId") Long memberId)
    {
        return success(memberService.selectMemberByMemberId(memberId));
    }

    @PreAuthorize("@ss.hasPermi('member:member:getAllMembers')")
    @GetMapping(value = "/getAllMembers")
    public AjaxResult getAllMembers()
    {
        return success(memberService.getAllMembers());
    }

    /**
     * 新增会员管理
     */
    @PreAuthorize("@ss.hasPermi('member:member:add')")
    @Log(title = "会员管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Member member)
    {
        member.setCreatetime(DateUtils.getTime());
        return toAjax(memberService.insertMember(member));
    }

    /**
     * 修改会员管理
     */
    @PreAuthorize("@ss.hasPermi('member:member:edit')")
    @Log(title = "会员管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Member member)
    {
        member.setModifytime(DateUtils.getTime());
        return toAjax(memberService.updateMember(member));
    }

    /**
     * 删除会员管理
     */
    @PreAuthorize("@ss.hasPermi('member:member:remove')")
    @Log(title = "会员管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{memberIds}")
    public AjaxResult remove(@PathVariable Long[] memberIds)
    {
        return toAjax(memberService.deleteMemberByMemberIds(memberIds));
    }
}

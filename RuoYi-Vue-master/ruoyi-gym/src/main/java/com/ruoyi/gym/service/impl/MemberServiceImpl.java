package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.MemberMapper;
import com.ruoyi.gym.domain.Member;
import com.ruoyi.gym.service.IMemberService;

/**
 * 会员管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-13
 */
@Service
public class MemberServiceImpl implements IMemberService
{
    @Autowired
    private MemberMapper memberMapper;

    /**
     * 查询会员管理
     *
     * @param memberId 会员管理主键
     * @return 会员管理
     */
    @Override
    public Member selectMemberByMemberId(Long memberId)
    {
        return memberMapper.selectMemberByMemberId(memberId);
    }

    /**
     * 查询会员管理列表
     *
     * @param member 会员管理
     * @return 会员管理
     */
    @Override
    public List<Member> selectMemberList(Member member)
    {
        return memberMapper.selectMemberList(member);
    }

    /**
     * 新增会员管理
     *
     * @param member 会员管理
     * @return 结果
     */
    @Override
    public int insertMember(Member member)
    {
        return memberMapper.insertMember(member);
    }

    /**
     * 修改会员管理
     *
     * @param member 会员管理
     * @return 结果
     */
    @Override
    public int updateMember(Member member)
    {
        return memberMapper.updateMember(member);
    }

    /**
     * 批量删除会员管理
     *
     * @param memberIds 需要删除的会员管理主键
     * @return 结果
     */
    @Override
    public int deleteMemberByMemberIds(Long[] memberIds)
    {
        return memberMapper.deleteMemberByMemberIds(memberIds);
    }

    /**
     * 删除会员管理信息
     *
     * @param memberId 会员管理主键
     * @return 结果
     */
    @Override
    public int deleteMemberByMemberId(Long memberId)
    {
        return memberMapper.deleteMemberByMemberId(memberId);
    }

    @Override
    public List<Member> getAllMembers() {
        return memberMapper.getAllMembers();
    }
}

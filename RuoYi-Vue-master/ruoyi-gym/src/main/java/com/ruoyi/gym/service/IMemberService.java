package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Member;

/**
 * 会员管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-13
 */
public interface IMemberService
{
    /**
     * 查询会员管理
     *
     * @param memberId 会员管理主键
     * @return 会员管理
     */
    public Member selectMemberByMemberId(Long memberId);

    /**
     * 查询会员管理列表
     *
     * @param member 会员管理
     * @return 会员管理集合
     */
    public List<Member> selectMemberList(Member member);

    /**
     * 新增会员管理
     *
     * @param member 会员管理
     * @return 结果
     */
    public int insertMember(Member member);

    /**
     * 修改会员管理
     *
     * @param member 会员管理
     * @return 结果
     */
    public int updateMember(Member member);

    /**
     * 批量删除会员管理
     *
     * @param memberIds 需要删除的会员管理主键集合
     * @return 结果
     */
    public int deleteMemberByMemberIds(Long[] memberIds);

    /**
     * 删除会员管理信息
     *
     * @param memberId 会员管理主键
     * @return 结果
     */
    public int deleteMemberByMemberId(Long memberId);

    List<Member> getAllMembers();
}

package com.ruoyi.gym.mapper;

import java.util.List;
import com.ruoyi.gym.domain.Member;
import org.springframework.stereotype.Repository;

/**
 * 会员管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-09-13
 */
@Repository
public interface MemberMapper
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
     * 删除会员管理
     *
     * @param memberId 会员管理主键
     * @return 结果
     */
    public int deleteMemberByMemberId(Long memberId);

    /**
     * 批量删除会员管理
     *
     * @param memberIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMemberByMemberIds(Long[] memberIds);

    List<Member> getAllMembers();
}

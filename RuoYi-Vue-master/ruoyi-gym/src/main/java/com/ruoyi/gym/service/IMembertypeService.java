package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Membertype;

/**
 * 会员卡管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface IMembertypeService
{
    /**
     * 查询会员卡管理
     *
     * @param typeId 会员卡管理主键
     * @return 会员卡管理
     */
    public Membertype selectMembertypeByTypeId(Long typeId);

    /**
     * 查询会员卡管理列表
     *
     * @param membertype 会员卡管理
     * @return 会员卡管理集合
     */
    public List<Membertype> selectMembertypeList(Membertype membertype);

    /**
     * 新增会员卡管理
     *
     * @param membertype 会员卡管理
     * @return 结果
     */
    public int insertMembertype(Membertype membertype);

    /**
     * 修改会员卡管理
     *
     * @param membertype 会员卡管理
     * @return 结果
     */
    public int updateMembertype(Membertype membertype);

    /**
     * 批量删除会员卡管理
     *
     * @param typeIds 需要删除的会员卡管理主键集合
     * @return 结果
     */
    public int deleteMembertypeByTypeIds(Long[] typeIds);

    /**
     * 删除会员卡管理信息
     *
     * @param typeId 会员卡管理主键
     * @return 结果
     */
    public int deleteMembertypeByTypeId(Long typeId);

    List<Membertype> getAllTypes();
}

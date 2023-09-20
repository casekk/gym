package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.MembertypeMapper;
import com.ruoyi.gym.domain.Membertype;
import com.ruoyi.gym.service.IMembertypeService;

/**
 * 会员卡管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class MembertypeServiceImpl implements IMembertypeService
{
    @Autowired
    private MembertypeMapper membertypeMapper;

    /**
     * 查询会员卡管理
     *
     * @param typeId 会员卡管理主键
     * @return 会员卡管理
     */
    @Override
    public Membertype selectMembertypeByTypeId(Long typeId)
    {
        return membertypeMapper.selectMembertypeByTypeId(typeId);
    }

    /**
     * 查询会员卡管理列表
     *
     * @param membertype 会员卡管理
     * @return 会员卡管理
     */
    @Override
    public List<Membertype> selectMembertypeList(Membertype membertype)
    {
        return membertypeMapper.selectMembertypeList(membertype);
    }

    /**
     * 新增会员卡管理
     *
     * @param membertype 会员卡管理
     * @return 结果
     */
    @Override
    public int insertMembertype(Membertype membertype)
    {
        return membertypeMapper.insertMembertype(membertype);
    }

    /**
     * 修改会员卡管理
     *
     * @param membertype 会员卡管理
     * @return 结果
     */
    @Override
    public int updateMembertype(Membertype membertype)
    {
        return membertypeMapper.updateMembertype(membertype);
    }

    /**
     * 批量删除会员卡管理
     *
     * @param typeIds 需要删除的会员卡管理主键
     * @return 结果
     */
    @Override
    public int deleteMembertypeByTypeIds(Long[] typeIds)
    {
        return membertypeMapper.deleteMembertypeByTypeIds(typeIds);
    }

    /**
     * 删除会员卡管理信息
     *
     * @param typeId 会员卡管理主键
     * @return 结果
     */
    @Override
    public int deleteMembertypeByTypeId(Long typeId)
    {
        return membertypeMapper.deleteMembertypeByTypeId(typeId);
    }

    @Override
    public List<Membertype> getAllTypes() {
        return membertypeMapper.getAllTypes();
    }
}

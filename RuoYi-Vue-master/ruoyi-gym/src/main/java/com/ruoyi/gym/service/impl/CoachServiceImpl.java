package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.CoachMapper;
import com.ruoyi.gym.domain.Coach;
import com.ruoyi.gym.service.ICoachService;

/**
 * 教练管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class CoachServiceImpl implements ICoachService
{
    @Autowired
    private CoachMapper coachMapper;

    /**
     * 查询教练管理
     *
     * @param coachId 教练管理主键
     * @return 教练管理
     */
    @Override
    public Coach selectCoachByCoachId(Long coachId)
    {
        return coachMapper.selectCoachByCoachId(coachId);
    }

    /**
     * 查询教练管理列表
     *
     * @param coach 教练管理
     * @return 教练管理
     */
    @Override
    public List<Coach> selectCoachList(Coach coach)
    {
        return coachMapper.selectCoachList(coach);
    }

    /**
     * 新增教练管理
     *
     * @param coach 教练管理
     * @return 结果
     */
    @Override
    public int insertCoach(Coach coach)
    {
        return coachMapper.insertCoach(coach);
    }

    /**
     * 修改教练管理
     *
     * @param coach 教练管理
     * @return 结果
     */
    @Override
    public int updateCoach(Coach coach)
    {
        return coachMapper.updateCoach(coach);
    }

    /**
     * 批量删除教练管理
     *
     * @param coachIds 需要删除的教练管理主键
     * @return 结果
     */
    @Override
    public int deleteCoachByCoachIds(Long[] coachIds)
    {
        return coachMapper.deleteCoachByCoachIds(coachIds);
    }

    /**
     * 删除教练管理信息
     *
     * @param coachId 教练管理主键
     * @return 结果
     */
    @Override
    public int deleteCoachByCoachId(Long coachId)
    {
        return coachMapper.deleteCoachByCoachId(coachId);
    }

    @Override
    public List<Coach> getAllCoaches() {
        return coachMapper.getAllCoaches();
    }
}

package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Coach;

/**
 * 教练管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface ICoachService
{
    /**
     * 查询教练管理
     *
     * @param coachId 教练管理主键
     * @return 教练管理
     */
    public Coach selectCoachByCoachId(Long coachId);

    /**
     * 查询教练管理列表
     *
     * @param coach 教练管理
     * @return 教练管理集合
     */
    public List<Coach> selectCoachList(Coach coach);

    /**
     * 新增教练管理
     *
     * @param coach 教练管理
     * @return 结果
     */
    public int insertCoach(Coach coach);

    /**
     * 修改教练管理
     *
     * @param coach 教练管理
     * @return 结果
     */
    public int updateCoach(Coach coach);

    /**
     * 批量删除教练管理
     *
     * @param coachIds 需要删除的教练管理主键集合
     * @return 结果
     */
    public int deleteCoachByCoachIds(Long[] coachIds);

    /**
     * 删除教练管理信息
     *
     * @param coachId 教练管理主键
     * @return 结果
     */
    public int deleteCoachByCoachId(Long coachId);

    List<Coach> getAllCoaches();
}

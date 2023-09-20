package com.ruoyi.gym.mapper;

import java.util.List;
import com.ruoyi.gym.domain.Coach;
import org.springframework.stereotype.Repository;

/**
 * 教练管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Repository
public interface CoachMapper
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
     * 删除教练管理
     *
     * @param coachId 教练管理主键
     * @return 结果
     */
    public int deleteCoachByCoachId(Long coachId);

    /**
     * 批量删除教练管理
     *
     * @param coachIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCoachByCoachIds(Long[] coachIds);

    List<Coach> getAllCoaches();
}

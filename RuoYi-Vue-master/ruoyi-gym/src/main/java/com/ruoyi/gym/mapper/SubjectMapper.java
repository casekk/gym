package com.ruoyi.gym.mapper;

import java.util.List;
import com.ruoyi.gym.domain.Subject;
import org.springframework.stereotype.Repository;

/**
 * 课程管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Repository
public interface SubjectMapper
{
    /**
     * 查询课程管理
     *
     * @param subId 课程管理主键
     * @return 课程管理
     */
    public Subject selectSubjectBySubId(Long subId);

    /**
     * 查询课程管理列表
     *
     * @param subject 课程管理
     * @return 课程管理集合
     */
    public List<Subject> selectSubjectList(Subject subject);

    /**
     * 新增课程管理
     *
     * @param subject 课程管理
     * @return 结果
     */
    public int insertSubject(Subject subject);

    /**
     * 修改课程管理
     *
     * @param subject 课程管理
     * @return 结果
     */
    public int updateSubject(Subject subject);

    /**
     * 删除课程管理
     *
     * @param subId 课程管理主键
     * @return 结果
     */
    public int deleteSubjectBySubId(Long subId);

    /**
     * 批量删除课程管理
     *
     * @param subIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSubjectBySubIds(Long[] subIds);

    List<Subject> getAllSubjects();
}


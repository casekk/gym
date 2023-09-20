package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.SubjectMapper;
import com.ruoyi.gym.domain.Subject;
import com.ruoyi.gym.service.ISubjectService;

/**
 * 课程管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class SubjectServiceImpl implements ISubjectService
{
    @Autowired
    private SubjectMapper subjectMapper;

    /**
     * 查询课程管理
     *
     * @param subId 课程管理主键
     * @return 课程管理
     */
    @Override
    public Subject selectSubjectBySubId(Long subId)
    {
        return subjectMapper.selectSubjectBySubId(subId);
    }

    /**
     * 查询课程管理列表
     *
     * @param subject 课程管理
     * @return 课程管理
     */
    @Override
    public List<Subject> selectSubjectList(Subject subject)
    {
        return subjectMapper.selectSubjectList(subject);
    }

    /**
     * 新增课程管理
     *
     * @param subject 课程管理
     * @return 结果
     */
    @Override
    public int insertSubject(Subject subject)
    {
        return subjectMapper.insertSubject(subject);
    }

    /**
     * 修改课程管理
     *
     * @param subject 课程管理
     * @return 结果
     */
    @Override
    public int updateSubject(Subject subject)
    {
        return subjectMapper.updateSubject(subject);
    }

    /**
     * 批量删除课程管理
     *
     * @param subIds 需要删除的课程管理主键
     * @return 结果
     */
    @Override
    public int deleteSubjectBySubIds(Long[] subIds)
    {
        return subjectMapper.deleteSubjectBySubIds(subIds);
    }

    /**
     * 删除课程管理信息
     *
     * @param subId 课程管理主键
     * @return 结果
     */
    @Override
    public int deleteSubjectBySubId(Long subId)
    {
        return subjectMapper.deleteSubjectBySubId(subId);
    }

    @Override
    public List<Subject> getAllSubjects() {
        return subjectMapper.getAllSubjects();
    }
}


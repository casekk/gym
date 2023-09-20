package com.ruoyi.gym.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.gym.mapper.PrivatecoachinfoMapper;
import com.ruoyi.gym.domain.Privatecoachinfo;
import com.ruoyi.gym.service.IPrivatecoachinfoService;

/**
 * 会员私教管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-09-12
 */
@Service
public class PrivatecoachinfoServiceImpl implements IPrivatecoachinfoService
{
    @Autowired
    private PrivatecoachinfoMapper privatecoachinfoMapper;

    /**
     * 查询会员私教管理
     *
     * @param pid 会员私教管理主键
     * @return 会员私教管理
     */
    @Override
    public Privatecoachinfo selectPrivatecoachinfoByPid(Long pid)
    {
        return privatecoachinfoMapper.selectPrivatecoachinfoByPid(pid);
    }

    /**
     * 查询会员私教管理列表
     *
     * @param privatecoachinfo 会员私教管理
     * @return 会员私教管理
     */
    @Override
    public List<Privatecoachinfo> selectPrivatecoachinfoList(Privatecoachinfo privatecoachinfo)
    {
        return privatecoachinfoMapper.selectPrivatecoachinfoList(privatecoachinfo);
    }

    /**
     * 新增会员私教管理
     *
     * @param privatecoachinfo 会员私教管理
     * @return 结果
     */
    @Override
    public int insertPrivatecoachinfo(Privatecoachinfo privatecoachinfo)
    {
        return privatecoachinfoMapper.insertPrivatecoachinfo(privatecoachinfo);
    }

    /**
     * 修改会员私教管理
     *
     * @param privatecoachinfo 会员私教管理
     * @return 结果
     */
    @Override
    public int updatePrivatecoachinfo(Privatecoachinfo privatecoachinfo)
    {
        return privatecoachinfoMapper.updatePrivatecoachinfo(privatecoachinfo);
    }

    /**
     * 批量删除会员私教管理
     *
     * @param pids 需要删除的会员私教管理主键
     * @return 结果
     */
    @Override
    public int deletePrivatecoachinfoByPids(Long[] pids)
    {
        return privatecoachinfoMapper.deletePrivatecoachinfoByPids(pids);
    }

    /**
     * 删除会员私教管理信息
     *
     * @param pid 会员私教管理主键
     * @return 结果
     */
    @Override
    public int deletePrivatecoachinfoByPid(Long pid)
    {
        return privatecoachinfoMapper.deletePrivatecoachinfoByPid(pid);
    }
}


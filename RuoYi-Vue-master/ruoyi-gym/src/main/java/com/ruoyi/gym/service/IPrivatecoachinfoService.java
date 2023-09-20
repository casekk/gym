package com.ruoyi.gym.service;

import java.util.List;
import com.ruoyi.gym.domain.Privatecoachinfo;

/**
 * 会员私教管理Service接口
 *
 * @author ruoyi
 * @date 2023-09-12
 */
public interface IPrivatecoachinfoService
{
    /**
     * 查询会员私教管理
     *
     * @param pid 会员私教管理主键
     * @return 会员私教管理
     */
    public Privatecoachinfo selectPrivatecoachinfoByPid(Long pid);

    /**
     * 查询会员私教管理列表
     *
     * @param privatecoachinfo 会员私教管理
     * @return 会员私教管理集合
     */
    public List<Privatecoachinfo> selectPrivatecoachinfoList(Privatecoachinfo privatecoachinfo);

    /**
     * 新增会员私教管理
     *
     * @param privatecoachinfo 会员私教管理
     * @return 结果
     */
    public int insertPrivatecoachinfo(Privatecoachinfo privatecoachinfo);

    /**
     * 修改会员私教管理
     *
     * @param privatecoachinfo 会员私教管理
     * @return 结果
     */
    public int updatePrivatecoachinfo(Privatecoachinfo privatecoachinfo);

    /**
     * 批量删除会员私教管理
     *
     * @param pids 需要删除的会员私教管理主键集合
     * @return 结果
     */
    public int deletePrivatecoachinfoByPids(Long[] pids);

    /**
     * 删除会员私教管理信息
     *
     * @param pid 会员私教管理主键
     * @return 结果
     */
    public int deletePrivatecoachinfoByPid(Long pid);
}

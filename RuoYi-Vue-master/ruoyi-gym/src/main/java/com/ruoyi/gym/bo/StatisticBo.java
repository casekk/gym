package com.ruoyi.gym.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 业务类，根据页面业务不同设置不同的属性，查询数据封装的类
 * */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class StatisticBo {

    private String name;
    private String value;
}

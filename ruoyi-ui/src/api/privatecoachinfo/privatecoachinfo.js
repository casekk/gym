import request from '@/utils/request'

// 查询会员私教管理列表
export function listPrivatecoachinfo(query) {
  return request({
    url: '/privatecoachinfo/privatecoachinfo/list',
    method: 'get',
    params: query
  })
}

// 查询会员私教管理详细
export function getPrivatecoachinfo(pid) {
  return request({
    url: '/privatecoachinfo/privatecoachinfo/' + pid,
    method: 'get'
  })
}

// 新增会员私教管理
export function addPrivatecoachinfo(data) {
  return request({
    url: '/privatecoachinfo/privatecoachinfo',
    method: 'post',
    data: data
  })
}

// 修改会员私教管理
export function updatePrivatecoachinfo(data) {
  return request({
    url: '/privatecoachinfo/privatecoachinfo',
    method: 'put',
    data: data
  })
}

// 删除会员私教管理
export function delPrivatecoachinfo(pid) {
  return request({
    url: '/privatecoachinfo/privatecoachinfo/' + pid,
    method: 'delete'
  })
}

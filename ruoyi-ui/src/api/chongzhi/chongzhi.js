import request from '@/utils/request'

// 查询充值管理列表
export function listChongzhi(query) {
  return request({
    url: '/chongzhi/chongzhi/list',
    method: 'get',
    params: query
  })
}

// 查询充值管理详细
export function getChongzhi(id) {
  return request({
    url: '/chongzhi/chongzhi/' + id,
    method: 'get'
  })
}

// 新增充值管理
export function addChongzhi(data) {
  return request({
    url: '/chongzhi/chongzhi',
    method: 'post',
    data: data
  })
}

// 修改充值管理
export function updateChongzhi(data) {
  return request({
    url: '/chongzhi/chongzhi',
    method: 'put',
    data: data
  })
}

// 删除充值管理
export function delChongzhi(id) {
  return request({
    url: '/chongzhi/chongzhi/' + id,
    method: 'delete'
  })
}

import request from '@/utils/request'

// 查询商品购买信息管理列表
export function listGoodinfo(query) {
  return request({
    url: '/goodinfo/goodinfo/list',
    method: 'get',
    params: query
  })
}

// 查询商品购买信息管理详细
export function getGoodinfo(id) {
  return request({
    url: '/goodinfo/goodinfo/' + id,
    method: 'get'
  })
}

// 新增商品购买信息管理
export function addGoodinfo(data) {
  return request({
    url: '/goodinfo/goodinfo',
    method: 'post',
    data: data
  })
}

// 修改商品购买信息管理
export function updateGoodinfo(data) {
  return request({
    url: '/goodinfo/goodinfo',
    method: 'put',
    data: data
  })
}

// 删除商品购买信息管理
export function delGoodinfo(id) {
  return request({
    url: '/goodinfo/goodinfo/' + id,
    method: 'delete'
  })
}

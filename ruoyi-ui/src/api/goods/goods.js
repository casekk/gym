import request from '@/utils/request'

// 查询商品管理列表
export function listGoods(query) {
  return request({
    url: '/goods/goods/list',
    method: 'get',
    params: query
  })
}

// 查询商品管理详细
export function getGoods(goodsId) {
  return request({
    url: '/goods/goods/' + goodsId,
    method: 'get'
  })
}

// 查询所有商品信息
export function getAllGoods() {
  return request({
    url: '/goods/goods/getAllGoods',
    method: 'get'
  })
}
// 新增商品管理
export function addGoods(data) {
  return request({
    url: '/goods/goods',
    method: 'post',
    data: data
  })
}

// 修改商品管理
export function updateGoods(data) {
  return request({
    url: '/goods/goods',
    method: 'put',
    data: data
  })
}

// 删除商品管理
export function delGoods(goodsId) {
  return request({
    url: '/goods/goods/' + goodsId,
    method: 'delete'
  })
}

import request from '@/utils/request'

// 查询门店管理列表
export function listStore(query) {
  return request({
    url: '/store/store/list',
    method: 'get',
    params: query
  })
}

//查询不同省份的门店信息 getProvinceStoreCount
export function getProvinceStoreCount() {
  return request({
    url: '/store/store/getProvinceStoreCount',
    method: 'get'
  })
}

// 查询门店管理详细
export function getStore(id) {
  return request({
    url: '/store/store/' + id,
    method: 'get'
  })
}

// 新增门店管理
export function addStore(data) {
  return request({
    url: '/store/store',
    method: 'post',
    data: data
  })
}

// 修改门店管理
export function updateStore(data) {
  return request({
    url: '/store/store',
    method: 'put',
    data: data
  })
}

// 删除门店管理
export function delStore(id) {
  return request({
    url: '/store/store/' + id,
    method: 'delete'
  })
}

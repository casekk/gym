import request from '@/utils/request'

// 查询器材管理列表
export function listEquipment(query) {
  return request({
    url: '/equipment/equipment/list',
    method: 'get',
    params: query
  })
}

// 获取不同器材的数量
export function getEquipmentCount() {
  return request({
    url: '/equipment/equipment/getEquipmentCount',
    method: 'get',
  })
}



// 查询器材管理详细
export function getEquipment(eqId) {
  return request({
    url: '/equipment/equipment/' + eqId,
    method: 'get'
  })
}

// 新增器材管理
export function addEquipment(data) {
  return request({
    url: '/equipment/equipment',
    method: 'post',
    data: data
  })
}

// 修改器材管理
export function updateEquipment(data) {
  return request({
    url: '/equipment/equipment',
    method: 'put',
    data: data
  })
}

// 删除器材管理
export function delEquipment(eqId) {
  return request({
    url: '/equipment/equipment/' + eqId,
    method: 'delete'
  })
}

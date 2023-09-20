import request from '@/utils/request'

// 查询会员卡管理列表
export function listMembertype(query) {
  return request({
    url: '/membertype/membertype/list',
    method: 'get',
    params: query
  })
}

// 查询会员卡管理详细
export function getMembertype(typeId) {
  return request({
    url: '/membertype/membertype/' + typeId,
    method: 'get'
  })
}

// 查询所有会员类型名称
export function getAllTypes() {
  return request({
    url: '/membertype/membertype/getAllTypes',
    method: 'get'
  })
}
// 新增会员卡管理
export function addMembertype(data) {
  return request({
    url: '/membertype/membertype',
    method: 'post',
    data: data
  })
}

// 修改会员卡管理
export function updateMembertype(data) {
  return request({
    url: '/membertype/membertype',
    method: 'put',
    data: data
  })
}

// 删除会员卡管理
export function delMembertype(typeId) {
  return request({
    url: '/membertype/membertype/' + typeId,
    method: 'delete'
  })
}

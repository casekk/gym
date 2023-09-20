import request from '@/utils/request'

// 查询会员管理列表
export function listMember(query) {
  return request({
    url: '/member/member/list',
    method: 'get',
    params: query
  })
}

// 查询会员管理详细
export function getMember(memberId) {
  return request({
    url: '/member/member/' + memberId,
    method: 'get'
  })
}

// 查询所有会员信息
export function getAllMembers() {
  return request({
    url: '/member/member/getAllMembers' ,
    method: 'get'
  })
}
// 新增会员管理
export function addMember(data) {
  return request({
    url: '/member/member',
    method: 'post',
    data: data
  })
}

// 修改会员管理
export function updateMember(data) {
  return request({
    url: '/member/member',
    method: 'put',
    data: data
  })
}

// 删除会员管理
export function delMember(memberId) {
  return request({
    url: '/member/member/' + memberId,
    method: 'delete'
  })
}

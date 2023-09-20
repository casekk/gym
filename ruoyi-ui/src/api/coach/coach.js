import request from '@/utils/request'

// 查询教练管理列表
export function listCoach(query) {
  return request({
    url: '/coach/coach/list',
    method: 'get',
    params: query
  })
}

// 查询教练管理详细
export function getCoach(coachId) {
  return request({
    url: '/coach/coach/' + coachId,
    method: 'get'
  })
}

// 查询所有高校信息
export function getAllCoaches() {
  return request({
    url: '/coach/coach/getAllCoaches' ,
    method: 'get'
  })
}
// 新增教练管理
export function addCoach(data) {
  return request({
    url: '/coach/coach',
    method: 'post',
    data: data
  })
}

// 修改教练管理
export function updateCoach(data) {
  return request({
    url: '/coach/coach',
    method: 'put',
    data: data
  })
}

// 删除教练管理
export function delCoach(coachId) {
  return request({
    url: '/coach/coach/' + coachId,
    method: 'delete'
  })
}

import request from '@/utils/request'

// 查询课程管理列表
export function listSubject(query) {
  return request({
    url: '/subject/subject/list',
    method: 'get',
    params: query
  })
}

// 查询课程管理详细
export function getSubject(subId) {
  return request({
    url: '/subject/subject/' + subId,
    method: 'get'
  })
}

// 查询所有课程信息
export function getAllSubjects() {
  return request({
    url: '/subject/subject/getAllSubjects' ,
    method: 'get'
  })
}
// 新增课程管理
export function addSubject(data) {
  return request({
    url: '/subject/subject',
    method: 'post',
    data: data
  })
}

// 修改课程管理
export function updateSubject(data) {
  return request({
    url: '/subject/subject',
    method: 'put',
    data: data
  })
}

// 删除课程管理
export function delSubject(subId) {
  return request({
    url: '/subject/subject/' + subId,
    method: 'delete'
  })
}

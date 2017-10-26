import axios from 'axios'
import qs from 'qs'
import NProgress from 'nprogress'
import commonFunc from './common'

NProgress.configure({
  showSpinner: false
})

axios.interceptors.request.use(config => {
  NProgress.start()
  Object.assign(config.headers, {
    'X-SUMMER-RequestId': commonFunc.getGUID(), // unique id
    'Authorization': 1 // token
  })
  return config
}, error => {
  return Promise.reject(error)
})

axios.interceptors.response.use(response => response, error => Promise.resolve(error.response))

function checkStatus(response) {
  NProgress.done()
  if (response.status === 200 || response.status === 304) {
    return response
  } else if (response.status === 401) {
    
  }
  return {
    data: {
      code: -404,
      message: response.statusText,
      data: response.statusText,
    }
  }
}

export default {
  post(url, data) {
    return axios({
      method: 'post',
      url,
      data: qs.stringify(data),
      timeout: 30000,
      headers: {
        'X-Requested-With': 'XMLHttpRequest',
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
      }
    }).then(checkStatus)
  },
  get(url, params) {
    return axios({
      method: 'get',
      url,
      params,
      timeout: 30000,
      headers: {
        'X-Requested-With': 'XMLHttpRequest'
      }
    }).then(checkStatus)
  },
  delete(url) {
    return axios({
      method: 'delete',
      url,
      params,
      timeout: 30000,
      headers: {
        'X-Requested-With': 'XMLHttpRequest'
      }
    }).then(checkStatus)
  }
}
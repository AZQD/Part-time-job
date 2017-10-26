import API from './api'

const Request = {
  Product: {
    getDetailById(id) {
      return API.get(`/api/v1/products/${id}`)
    }
  },
  Bag: {
    getCount() {
      return API.get(`/api/v1/bag/count`)
    }
  }
}

export default Request
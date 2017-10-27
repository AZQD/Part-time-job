import { SET_PRODUCT_DETAIL } from '../../utils/constans'

export function setProductDetail(detail) {
  return { type: SET_PRODUCT_DETAIL, detail }
}

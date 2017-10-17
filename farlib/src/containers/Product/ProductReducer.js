import { SET_PRODUCT_DETAIL } from '../../utils/constans'

export function product(state = {}, action) {
  switch (action.type) {
    case SET_PRODUCT_DETAIL:
      return {...action.detail}
    default:
      return state
  }
}
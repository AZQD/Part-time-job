import {
  ADD_TO_BAG,
  SET_BAG_ITEM_COUNT,
  GET_BAG_INFO
} from '../../utils/constans'

export function addToBag(id) {
  return { type: ADD_TO_BAG, id }
}

export function setBagItemCount(count) {
  return { type: SET_BAG_ITEM_COUNT, count }
}

export function getBagInfo(id) {
  return { type: GET_BAG_INFO, id }
}
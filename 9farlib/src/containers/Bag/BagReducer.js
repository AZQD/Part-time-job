import {
  ADD_TO_BAG,
  SET_BAG_ITEM_COUNT,
  GET_BAG_INFO
} from '../../utils/constans'

const initState = {
  items: [],
  count: 0
}

export function bag(state = initState, action) {
  switch (action.type) {
    case ADD_TO_BAG:
      return {
        items: [
          ...state.items,
          {
            id: action.id
          }
        ],
        count: state.count + 1
      }
    case SET_BAG_ITEM_COUNT:
      return {
        items: [...state.items],
        count: action.count
      }
    default:
      return state
  }
}
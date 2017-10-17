import { combineReducers } from 'redux'
import { bag } from '../containers/Bag/BagReducer'
import { product } from '../containers/Product/ProductReducer'

const reducers = combineReducers({
  bag,
  product
})

export default reducers
import React from 'react'
import {
  Route,
  Switch,
  Redirect
} from 'react-router'

import Home from './containers/Home/HomeContainer'
import Category from './containers/Category/CategoryContainer'
import Designer from './containers/Designer/DesignerContainer'
import Bag from './containers/Bag/BagContainer'
import Order from './containers/Order/OrderContainer'
import Product from './containers/Product/ProductContainer'

const router = () => (
  <Switch>
    <Route path="/home" exact component={Home} />
    <Route path="/category" exact component={Category} />
    <Route path="/designer" exact component={Designer} />
    <Route path="/bag" exact component={Bag} />
    <Route path="/order" exact component={Order} />
    <Route path="/product/:id" exact component={Product} />
    <Redirect to="/home" />
  </Switch>
)

export default router
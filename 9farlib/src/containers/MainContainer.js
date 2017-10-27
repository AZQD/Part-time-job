import React, { Component } from 'react'
import { connect } from 'react-redux'

import styles from './MainContainer.css'

import FFRouter from '../router'

import Tabbar from '../components/Tabbar/Bar'
import Request from '../utils/request'
import { setBagItemCount } from './Bag/BagAction'

let tabs = [
  { id: 'home', text: '首页', link: '/home', icon: 'home' },
  { id: 'category', text: '品类', link: '/category', icon: 'category' },
  { id: 'designer', text: '品牌', link: '/designer', icon: 'designer' },
  { id: 'bag', text: '购物袋', link: '/bag', icon: 'bag' },
  { id: 'account', text: '订单', link: '/order', icon: 'account' },
]

class Main extends Component {
  componentDidMount() {
    const { dispatch } = this.props
    Request.Bag.getCount().then(resp => {
      const count = 5 // resp.data.body.count;
      dispatch(setBagItemCount(count))
    })
  }

  render() {
    const { location, bag } = this.props
    const pathname = location.pathname
    const showTabbarPathArr = ['/', '/home', '/category', '/designer', '/order']
    let showTabbar = showTabbarPathArr.indexOf(pathname) < 0 ? false : true

    return (
      <div className={styles.app}>
        <div className={styles['ff-container']}>
          <FFRouter />
        </div>
        {
          showTabbar
          ? <Tabbar tabs={tabs} bagItemCount={bag.count} />
          : ''
        }
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    bag: state.bag
  }
}

export default connect(mapStateToProps)(Main)
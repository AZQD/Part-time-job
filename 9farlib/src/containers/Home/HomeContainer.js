import React, { Component } from 'react'
import {
  Route,
  Link
} from 'react-router-dom'
import Request from '../../utils/request'
import styles from './HomeContainer.css'

class Home extends Component {
  componentDidMount() {
    Request.Product.getDetailById(2).then(resp => {
      // TODO
    })
  }

  render() {
    return (
      <div className={styles['ff-home']}>
        <div className={styles.header}></div>
        <Link to="/product/123">Product Detail</Link>
      </div>
    )
  }
}

export default Home
import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { NavLink } from 'react-router-dom'
import Badge from '../Badge'
import styles from './Item.css'

export default class TabbarItem extends Component {
  handleClick(tab) {
    // console.log(tab.id)
  }

  render() {  
    const { tab, count } = this.props
    return (
      <li className={styles['tab-item']} onClick={() => this.handleClick(tab)}>
        <NavLink to={tab.link} exact activeClassName={styles['tab-active']}>
          <i className={`${styles['tab-icon']} icon-${tab.icon}`}>
            {
              count
              ? <Badge count={count} />
              : ''
            }
          </i>
          <p className={styles['tab-text']}>{tab.text}</p>
        </NavLink>
      </li>
    )
  }
}

TabbarItem.propTypes = {
  tab: PropTypes.object.isRequired,
  count: PropTypes.number
}
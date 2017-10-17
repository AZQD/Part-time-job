import React, { Component } from 'react'
import PropTypes from 'prop-types'
import TabbarItem from './Item'
import styles from './Bar.css'

export default class Tabbar extends Component {
  render() {
    const { tabs, bagItemCount } = this.props
    return (
      <div className={styles.tabbar}>
        <ul>
          {
            tabs.map(tab => {
              if (tab.id === 'bag') {
                return (
                  <TabbarItem key={tab.id} tab={tab} count={bagItemCount} />
                )
              } else {
                return (
                  <TabbarItem key={tab.id} tab={tab} />
                )
              }
            })
          }
        </ul>
      </div>
    )
  }
}

Tabbar.propTypes = {
  tabs: PropTypes.array.isRequired,
  bagItemCount: PropTypes.number
}
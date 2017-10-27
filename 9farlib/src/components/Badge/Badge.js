import React, { Component } from 'react'
import PropTypes from 'prop-types'
import styles from './Badge.css'

export default class Badge extends Component {
  render() {
    return (
      <span className={styles['ff-badge']}>{this.props.count}</span>
    )
  }
}

Badge.propTypes = {
  count: PropTypes.number.isRequired
}
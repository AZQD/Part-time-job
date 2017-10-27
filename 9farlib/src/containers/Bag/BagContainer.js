import React, { Component } from 'react'
import { connect } from 'react-redux'
import { addToBag } from './BagAction'

class Bag extends Component {
  handleClick() {
    const { dispatch } = this.props
    dispatch(addToBag(Math.floor(Math.random() * 1000)))
  }
  render() {
    return (
      <div>
        <button onClick={() => this.handleClick()}>Add to Bag</button>
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    bag: state.bag
  }
}

export default connect(mapStateToProps)(Bag)
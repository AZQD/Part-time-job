import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom'
import { connect } from 'react-redux'

import '../styles/normalize.less'
import '../styles/font.less'
import '../styles/nprogress.less'

import Main from './MainContainer'

class App extends Component {
  render() {
    return (
      <Router>
        <Route path="/" component={Main} />
      </Router>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    bag: state.bag
  }
}

export default connect(mapStateToProps)(App)
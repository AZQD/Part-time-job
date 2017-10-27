import React from 'react'
import { render } from 'react-dom'
import { createStore } from 'redux'
import { Provider } from 'react-redux'
import { AppContainer } from 'react-hot-loader'
import App from './containers/App'
import storeApp from './reducers/reducers'
import initReactFastclick from 'react-fastclick'

initReactFastclick()

const __DEV__ = (process.env.NODE_ENV || "development") === "development";

let store = createStore(storeApp, window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__())

if (__DEV__) {
  render(
    <Provider store={store}>
      <AppContainer>
        <App />
      </AppContainer>
    </Provider>,
    document.getElementById('root')
  )
  // if (module && module.hot) {
  //   module.hot.accept(rootComponentPath, () => {
  //     render(App);
  //   });
  // }
} else {
  render(
    <Provider store={store}>
      <App />
    </Provider>,
    document.getElementById('root')
  )
}
const { resolve } = require('path')
const webpack = require('webpack')
const path = require('path')

const plugins = require('./webpack-config/plugins')
const loaders = require('./webpack-config/loaders')

const __DEV__ = (process.env.NODE_ENV || 'development') === 'development'
const devTool = __DEV__ ? 'cheap-module-eval-source-map' : 'hidden-source-map'

const entry = ['react-hot-loader/patch']
  .concat(__DEV__
    ? ['webpack-dev-server/client?http://localhost:8080', 'webpack/hot/only-dev-server']
    : [])
  .concat(['./src/index.js'])

module.exports = {
  entry,

  output: {
    filename: '[name].[hash:8].js',
    path: resolve(__dirname, 'dist'),
    publicPath: '/',
    sourceMapFilename: '[name].[hash:8].map',
    chunkFilename: '[name].[chunkhash].chunk.js'
  },

  // context: resolve(__dirname, '../src'),

  devtool: devTool,

  plugins: __DEV__
    ? [].concat(plugins.commonPlugins).concat(plugins.devPlugins)
    : [].concat(plugins.commonPlugins).concat(plugins.prodPlugins),

  devServer: {
    hot: true,
    historyApiFallback: true,
    contentBase: resolve(__dirname, 'src'),
    proxy: {
      '/api': 'http://ffcnn068:8085/'
    },
    disableHostCheck: true
  },

  resolve: {
    modules: [
      'node_modules',
      path.join(__dirname, 'src')
    ],
    extensions: ['.web.js', '.js', '.json']
  },

  module: {
    rules: [
      loaders.jsx,
      loaders.styles.css,
      loaders.styles.less,
      loaders.styles.scss,
      loaders.assets,
      loaders.svg,
      loaders.json
    ]
  },

  externals: {
    window: 'window',
    jquery: '$'
  }
}
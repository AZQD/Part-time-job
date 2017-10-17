const path = require('path')
const webpack = require('webpack')

const ExtractTextPlugin = require('extract-text-webpack-plugin')
// const DashboardPlugin = require('webpack-dashboard/plugin')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const CopyWebpackPlugin = require('copy-webpack-plugin')
const BundleAnalyzerPlugin = require('webpack-bundle-analyzer').BundleAnalyzerPlugin

const __DEV__ = (process.env.NODE_ENV || 'development') === 'development'

exports.commonPlugins = [
  new webpack.DefinePlugin({
    'process.env': {
      NODE_ENV: JSON.stringify(__DEV__ ? 'development' : 'production')
    },
    __DEV__: JSON.stringify(__DEV__)
  })
]

exports.devPlugins = [
  new webpack.HotModuleReplacementPlugin(),
  new webpack.NamedModulesPlugin(),
  new webpack.NoEmitOnErrorsPlugin(),
  new webpack.LoaderOptionsPlugin({
    minimize: false,
    debug: true,
    options: {
      context: '/'
    }
  }),
  // new webpack.DllReferencePlugin({
  //   manifest: path.resolve(__dirname, '../public/manifest.json')
  // }),
  // new DashboardPlugin(),
  new HtmlWebpackPlugin({
    template: 'src/index.html'
  })
]

const prodPlugins = [
  new webpack.optimize.CommonsChunkPlugin({
    name: 'vendor',
    filename: 'vendor.bundle.js',
    // minChunks: ({ resourse }) =>
    //   resource &&
    //   resource.indexOf('node_modules') >= 0 &&
    //   resource.match(/\.(js|less|scss)$/)
  }),
  // new webpack.optimize.ModuleConcatenationPlugin(),
  new webpack.LoaderOptionsPlugin({
    minimize: true,
    debug: false,
    options: {
      context: '/'
    }
  }),
  new ExtractTextPlugin('[name].[contenthash:8].css'),
  new webpack.optimize.UglifyJsPlugin({
    sourceMap: false,
    compress: true
  }),
  // new BundleAnalyzerPlugin({
  //   analyzerMode: 'static',
  //   analyzerHost: '127.0.0.1',
  //   analyzerPort: 8888,
  //   reportFilename: 'report.html',
  //   defaultSizes: 'parsed',
  //   openAnalyzer: true
  // }),
  new webpack.optimize.AggressiveMergingPlugin(),
  new HtmlWebpackPlugin({
    template: 'src/index.html'
  }),
  new CopyWebpackPlugin([{
    from: 'src/assets',
    to: 'assets'
  }, {
    from: 'src/rem.js',
    to: ''
  }, {
    form: '/favicon.ico',
    to: ''
  }])
]

// entry html file for production env


exports.prodPlugins = prodPlugins
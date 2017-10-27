const path = require('path')
const ExtractTextPlugin = require('extract-text-webpack-plugin')

const __DEV__ = (process.env.NODE_ENV || 'development') === 'development';

exports.jsx = {
  test: /\.(js|jsx)$/,
  exclude: /node_modules/,
  use: ['babel-loader']
}

const moduleCSSLoader = {
  loader: 'css-loader',
  options: {
    modules: true,
    sourceMap: true,
    importLoaders: 1,
    localIdentName: '[name]__[local]--[hash:base64:5]'
  }
}

const postCSSLoader = {
  loader: 'postcss-loader'
}

const svgDirs = [
  require.resolve('antd-mobile').replace(/warn\.js$/, ''),  // 1. 属于 antd-mobile 内置 svg 文件
  // path.resolve(__dirname, 'src/my-project-svg-foler'),  // 2. 自己私人的 svg 存放目录
]

exports.styles = {
  css: {
    test: /\.css$/,
    use: __DEV__
      ? ['style-loader', moduleCSSLoader, postCSSLoader]
      : ExtractTextPlugin.extract({
        use: [moduleCSSLoader, postCSSLoader]
      })
  },
  less: {
    test: /\.less$/,
    use: __DEV__
      ? ['style-loader', 'css-loader', postCSSLoader, 'less-loader']
      : ExtractTextPlugin.extract({
        use: ['css-loader', postCSSLoader, 'less-loader']
      })
  },
  scss: {
    test: /\.(sass|scss)$/,
    use: __DEV__
      ? ['style-loader', 'css-loader', postCSSLoader, 'sass-loader']
      : ExtractTextPlugin.extract({
        use: ['css-loader', postCSSLoader, 'sass-loader']
      })
  }
}

exports.assets = {
  test: /\.(eot|woff|woff2|ttf|svg|png|jpe?g|gif|mp4|webm)$/,
  use: [{
    loader: 'url-loader',
    options: {
      limit: 8192,
      name: 'assets/[name].[md5:hash:hex:7].[ext]'
    }
  }]
}

exports.svg = {
  test: /\.(svg)$/i,
  loader: 'svg-sprite',
  include: svgDirs
}

exports.json = {
  test: /\.json$/,
  loader: 'json-loader'
}
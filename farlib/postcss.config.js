module.exports = ctx => ({
  plugins: {
    'postcss-import': {},
    'postcss-cssnext': {
      features: {
        customProperties: {
          variables: require('./src/styles/variables')
        }
      }
    },
    'cssnano': ctx.env === 'production' ? {} : false
  }
})
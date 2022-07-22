process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
const config = environment.toWebpackConfig();
config.output.filename = process.env.production ? `bundle-[chunkHash].js` : `bundle-[hash].js`


module.exports = config

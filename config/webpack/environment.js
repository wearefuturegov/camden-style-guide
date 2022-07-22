// VERY helpful notes here: https://github.com/rails/webpacker/blob/a84a4bb6b385ae17dd775a6034a0b159b88c6ea9/docs/webpack.md#configuration
const { environment } = require("@rails/webpacker");

const webpack = require("webpack");
// environment.plugins.prepend('Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery',
//     jQuery: 'jquery',
//     "window.jQuery": "jquery",
//     "window.$": "jquery"
//   })
// );
environment.loaders.append("scss", {
  test: /\.scss$/,
  use: [
    {
      loader: "sass-loader",
      options: {
        sourceMap: true,
        implementation: require("sass")
      }
    }
  ]
});

module.exports = environment;

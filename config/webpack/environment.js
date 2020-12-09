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

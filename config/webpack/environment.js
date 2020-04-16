const { environment } = require('@rails/webpacker')
const path = require("path");


const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)


environment.config.merge({
    resolve: {
        alias: {
            "javascript": path.join(__dirname, "..", "..",  "/app/javascript"),
            "channels": path.join(__dirname, "..", "..",  "/app/javascript/channels"),
        }
    }
})

module.exports = environment

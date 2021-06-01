module.exports = {
    assetsDir: 'static',
    devServer:{
        proxy: {
            '^/api':{
            target:'http://localhost:5000',
            changeOrigin: true
            }
        }
    },
    configureWebpack: {
        devtool: 'source-map'
    },
    chainWebpack: config => {
        config
            .plugin('html')
            .tap(args => {
                args[0].title = "星愿墙";
                return args;
            })
    }
}
import colors from 'vuetify/es5/util/colors'

export default
    mode: 'universal'
    head:
        titleTemplate: '%s - ' + process.env.npm_package_name
        title: process.env.npm_package_name or ''
        meta: [
            charset: 'utf-8'
        ,
            name: 'viewport'
            content: 'width=device-width, initial-scale=1'
        ,
            hid: 'description'
            name: 'description'
            content: process.env.npm_package_description or ''
        ]
        link: [
            rel: 'icon'
            type: 'image/x-icon'
            href: '/favicon.ico'
        ]
    loading: color: '#fff'
    css: []
    plugins: []
    buildModules: [
        '@nuxtjs/vuetify'
    ]
    modules: [
        '@nuxtjs/axios'
        'nuxt-coffeescript-module'
        '@nuxtjs/apollo'
        '@nuxtjs/localtunnel'
    ]
    axios: {}
    vuetify:
        customVariables: [
            '~/assets/variables.sass'
        ]
        theme:
            dark: yes
            # themes: dark:
            #     primary: colors.blue.darken2
            #     accent: colors.grey.darken3
            #     secondary: colors.amber.darken3
            #     info: colors.teal.lighten1
            #     warning: colors.amber.base
            #     error: colors.deepOrange.accent4
            #     success: colors.green.accent3
    build: extend: (config, ctx) ->
    apollo:
        clientConfigs:
            default:
                httpEndpoint: ''
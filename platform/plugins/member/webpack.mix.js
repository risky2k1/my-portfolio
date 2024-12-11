const mix = require('laravel-mix')
const path = require('path')

const directory = path.basename(path.resolve(__dirname))
const source = `platform/plugins/${directory}`
const dist = `public/vendor/core/plugins/${directory}`

mix
    .sass(`${source}/resources/sass/dashboard/style.scss`, `${dist}/css/dashboard`)
    .sass(`${source}/resources/sass/dashboard/style-rtl.scss`, `${dist}/css/dashboard`)
    .js(`${source}/resources/js/dashboard/script.js`, `${dist}/js/dashboard`)
    .js(`${source}/resources/js/dashboard/activity-logs.js`, `${dist}/js/dashboard`)
    .sass(`${source}/resources/sass/front-auth.scss`, `${dist}/css`)

if (mix.inProduction()) {
    mix
        .copy(`${dist}/css/dashboard/style.css`, `${source}/public/css/dashboard`)
        .copy(`${dist}/css/dashboard/style-rtl.css`, `${source}/public/css/dashboard`)
        .copy(`${dist}/js/dashboard/script.js`, `${source}/public/js/dashboard`)
        .copy(`${dist}/js/dashboard/activity-logs.js`, `${source}/public/js/dashboard`)
        .copy(`${dist}/css/front-auth.css`, `${source}/public/css`)
}

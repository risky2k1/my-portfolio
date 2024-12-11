const mix = require('laravel-mix')
const path = require('path')

const directory = path.basename(path.resolve(__dirname))
const source = `platform/themes/${directory}`
const dist = `public/themes/${directory}`

mix
    .sass(`${source}/assets/sass/style.scss`, `${dist}/css`)
    .js(`${source}/assets/js/ripple.js`, `${dist}/js`)

if (mix.inProduction()) {
    mix.copy(`${dist}/css/style.css`, `${source}/public/css`)
        .copy(`${dist}/js/ripple.js`, `${source}/public/js`)
}

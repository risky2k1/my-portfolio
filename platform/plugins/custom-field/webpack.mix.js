const mix = require('laravel-mix')
const path = require('path')

const directory = path.basename(path.resolve(__dirname))
const source = `platform/plugins/${directory}`
const dist = `public/vendor/core/plugins/${directory}`

mix
    .sass(`${source}/resources/sass/edit-field-group.scss`, `${dist}/css`)
    .sass(`${source}/resources/sass/custom-field.scss`, `${dist}/css`)
    .js(`${source}/resources/js/edit-field-group.js`, `${dist}/js`)
    .js(`${source}/resources/js/use-custom-fields.js`, `${dist}/js`)
    .js(`${source}/resources/js/import-field-group.js`, `${dist}/js`)

if (mix.inProduction()) {
    mix
        .copy(`${dist}/css/edit-field-group.css`, `${source}/public/css`)
        .copy(`${dist}/css/custom-field.css`, `${source}/public/css`)
        .copy(`${dist}/js/edit-field-group.js`, `${source}/public/js`)
        .copy(`${dist}/js/use-custom-fields.js`, `${source}/public/js`)
        .copy(`${dist}/js/import-field-group.js`, `${source}/public/js`)
}

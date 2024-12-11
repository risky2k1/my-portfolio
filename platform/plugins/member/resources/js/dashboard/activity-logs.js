import ActivityLogComponent from './components/ActivityLogComponent.vue'

if (typeof vueApp !== 'undefined') {
    vueApp.booting((vue) => {
        vue.component('activity-log-component', ActivityLogComponent)
    })
}

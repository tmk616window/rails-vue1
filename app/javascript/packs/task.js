import Vue from 'vue'
import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";
import Task from '../task.vue'
import axios from "axios";
import VueAxiosPlugin from "./plugins/vue-axios";
import Router from './router/router'
import Header from '../header.vue'
import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import VModal from 'vue-js-modal'
import VueStar from 'vue-star'
// import Protag from './components/protag.vue'

Vue.component('VueStar', VueStar);
Vue.use(VModal);
Vue.use(Vuetify);
Vue.use(BootstrapVue);
const vuetify = new Vuetify();
Vue.use(VueAxiosPlugin, { axios: axios })

var app = new Vue({
    vuetify, 
    router: Router,
    el: '#app',
    components: {
        // 'task': Task
        'navbar': Header      
    }
})
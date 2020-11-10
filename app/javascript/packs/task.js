import Vue from 'vue/dist/vue.esm.js'
import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css";
import Task from '../task.vue'
import axios from "axios";
import VueAxiosPlugin from "./plugins/vue-axios";
import Router from './router/router'
import Header from '../header.vue'
// import BootstrapVue from 'bootstrap-vue'




Vue.use(Vuetify);
// Vue.use(BootstrapVue);
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
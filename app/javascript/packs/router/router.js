import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Task from '../../task.vue'
import Show from '../components/show.vue'
import Signup from '../components/signup.vue'
import Login from '../components/login.vue'


Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/login', component: Login },
    { path: '/signup', component: Signup },
    { path: '/', component: Task },
    {
      path: '/:taskId',
      name: 'task',
      // template: '',
      component: Show
    }
  ],
})


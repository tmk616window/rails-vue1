import Vue from 'vue'
import Vuex from 'vuex'
import router from '../router/router.js'
import axios from 'axios'
// import jsonData from '@/assets/json/menu.json'

Vue.use(Vuex)



export default new Vuex.Store({
  state: {
    user: [],
    login: 'eee',
    Email: '',
    Password: ''
  },
  mutations: {  
    getUser(state, user){
      state.user = user
    },
    // loginUser(state, loginEmail, loginPassword){
    //   state.Email = loginEmail
    //   state.Password = loginPassword
    // }
  },
  actions: {
    async isLoggedIn ({commit}, state) {
        await axios.get('/api/sessions')
        .then(res => {
        commit('getUser', res.data)
        })
    }
  },

// export const actions = {
//   async getList () {
//     const res = await this.$axios.$get('/api/todos')
//     commit("setList", res)
//   }
// }
  
  
  getters:{
    login: state => {
      return state.user.name
    }
  }
})


const mutations = {
    setNewId(state, newId) {
        state.newId = newId;
    },
};

const getters = {
    getNewId: state => {
        return state.newId;
    }
};


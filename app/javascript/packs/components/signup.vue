<template>
    <!--<div class="text-center my-3 login_form">-->
    <!--  <v-card>-->
    <!--  <v-text-field type="text" name=""/>-->
    <!--  <v-text-field type="text" name=""/>-->
    <!--</v-card>-->
    <!--  <v-btn v-b-tooltip.hover title="ログイン">ログイン</v-btn>-->
    <!--</div>-->
    <b-container class="d-flex justify-content-center">
      <v-form class="login-form">
        <v-card-title>新規登録</v-card-title>
        <label for="">username</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input" v-model="newName"></v-text-field>
        <label for="">email</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input" v-model="newEmail"></v-text-field>
        <label for="">password</label>
        <v-text-field hint="最低8文字" counter=8 color="green darken-5" clearable class="login-input" type="password" v-model="newPassword"></v-text-field>
        <label for="">confirm password</label>
        <v-text-field hint="最低10文字" counter=8 color="green darken-5" clearable class="login-input" type="password" ></v-text-field>
        <v-btn @click="createUser">作成</v-btn>
    </v-form>
    </b-container>
</template>

<script>
   import axios from 'axios';
    axios.defaults.headers.common = {
        'X-Requested-With': 'XMLHttpRequest',
        'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    };
   export default {
     data: function () {
       return {
        //  form1: "<input v-model='putTask' type='text' />",
         tasks: [],
         newName: '',
         newEmail: '',
         newPassword: ''
       }
     },
    //  created: function(){
    //      this.fetchTasks();
    //  },
     methods: {
         createUser(){
             axios.post('/api/users', {user: {name: this.newName, email: this.newEmail, password_digest: this.newPassword}}).then(response => {
                this.newName = '';
                this.newEmail = '';
                this.newName = '';
                axios.get('/api/users').then(response => {
                this.users = response.data.users
                });
            });
        },
    }
   }
</script>

<style>
.login-input{
    width: 400px;
  }
.login-form{
  padding:10px 10px 10px 10px; 
  border: solid black 1px;
}  
</style>
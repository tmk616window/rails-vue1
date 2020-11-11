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
        <v-card-title>ログイン</v-card-title>
        <label for="">username</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input"></v-text-field>
        <label for="">password</label>
        <v-text-field hint="最低8文字" counter=8 color="green darken-5" clearable class="login-input" type="password"></v-text-field>
        <label for="">confirm password</label>
        <v-text-field hint="最低10文字" counter=8 color="green darken-5" clearable class="login-input" type="password"></v-text-field>
        <v-btn>ログイン</v-btn>
    　    <router-link to="signup/">新規作成</router-link>
    </v-form>
    </b-container>
</template>

<script>
  export default {
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
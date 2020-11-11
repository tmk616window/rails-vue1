<template>
    <!--<div class="text-center my-3 login_form">-->
    <!--  <v-card>-->
    <!--  <v-text-field type="text" name=""/>-->
    <!--  <v-text-field type="text" name=""/>-->
    <!--</v-card>-->
    <!--  <v-btn v-b-tooltip.hover title="ログイン">ログイン</v-btn>-->
    <!--</div>-->
    <b-container class="d-flex justify-content-center">
      <v-form >
        <v-card-title>ログイン</v-card-title>
        <label for="">username</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input"></v-text-field>
        <label for="">password</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input" type="password"></v-text-field>
        <label for="">confirm password</label>
        <v-text-field hint="入力中。最大10文字" color="green darken-5" clearable class="login-input" type="password"></v-text-field>
        <v-btn>ログイン</v-btn>
    </v-form>
    </b-container>
</template>

<script>
  export default {
  }
</script>

<style>
.login-input{
    width: 120px;
  }
</style>
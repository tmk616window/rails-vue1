<template>
  <v-app>
    <header>
      <v-app-bar
        app
        dark
      >
        <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>
        <v-toolbar-title class="bar-title">MyPortfolioSite</v-toolbar-title>
      </v-app-bar>
      <v-navigation-drawer
        v-model="drawer"
        fixed
        temporary
      >
        <v-list
          nav
          dense
        >
          <v-list-item-group>
            
            
            
            <router-link to="/" class="link">
            <v-list-item>
              <v-list-item-title >ホーム</v-list-item-title>
            </v-list-item>
            </router-link>
            
            <router-link to="/login" class="link">
            <v-list-item>
              <v-list-item-title >ログイン</v-list-item-title>
            </v-list-item>
            </router-link>
            
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>
    </header>
  </v-app>
</template>




<!--<template>-->
<!--    <header>-->
<!--    　<router-link to="/">ホーム</router-link>-->
<!--    　<router-link to="/login">ログイン</router-link>-->
    　
<!--      <v-navigation-drawer-->
<!--        v-model="drawer"-->
<!--        fixed-->
<!--        temporary-->
<!--      >-->
<!--        <v-list-->
<!--          nav-->
<!--          dense-->
<!--        >-->
<!--          <v-list-item-group>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#"　class="link">HOME</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#" class="link">ABOUT</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#"　class="link">WORK</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#" class="link">SERVICE</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#" class="link">BLOG</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--            <v-list-item>-->
<!--              <v-list-item-title><a href="#" class="link">ACCESS</a></v-list-item-title>-->
<!--            </v-list-item>-->
<!--          </v-list-item-group>-->
<!--        </v-list>-->
<!--      </v-navigation-drawer>-->
<!--    </header>-->
<!--</template>-->

<!--<template>-->
<!--    <div></div>-->
<!--        <v-app-bar-nav-icon @click="drawer = true" background-color="red"></v-app-bar-nav-icon>-->
<!--    </div>-->
<!--    <v-tabs>-->
<!--      <v-tab>Item One</v-tab>-->
<!--      <v-tab>Item Two</v-tab>-->
<!--      <v-tab>Item Three</v-tab>-->
<!--    </v-tabs>-->
<!--</template>-->






<script>
 
export default {
  data () {
    return {
      drawer: false,
    }
  }
}
</script>

<style scoped>
div{
  height: 25px;
}
.link{
  text-decoration: none;
}
.link:hover{
    text-decoration: none; /* リンクに出てくる下線を無効にする*/    
}
</style>
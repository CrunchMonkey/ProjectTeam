<template>
  <v-app>
    <v-main>
      
      <boardView/>
      <!--  <mainContainer/> -->
      <router-link to="/api/about">About</router-link>
      <router-link to="/api/hooter">hooter</router-link>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>

<script>
// import mainContainer from './components/mainPage/mainContainer.vue'
import boardView from './components/board/boardView.vue'

export default {
  name: 'App',
  
created() {
  this.$router.push({ path: '/api/' }); // 어바웃으로 이동
 },
  components: {
    //mainContainer,
    boardView,
  },
  data: () => ({
    //
  }),
  methods: {
    goToAbout() {
      // $router를 사용하여 라우팅을 수행합니다.
      alert("dd");
    },
  },
}
</script>

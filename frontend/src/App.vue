<template>
  <v-app>
    <v-main>
      
      <!--  <boardView/> -->
      <!--  <mainContainer/> -->
      <button @click="goToAboutPage">About 페이지로 이동</button>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>

<script>
// import mainContainer from './components/mainPage/mainContainer.vue'
//import boardView from './components/board/boardView.vue'

export default {
  name: 'App',
  
created() {
    this.$router.push({ path: '/' });
 },
  components: {
    //mainContainer,
    //boardView,
  },
  data: () => ({
    //
  }),
  methods: {
    goToAboutPage() {
      this.$router.push('/about');
    },
  },
}
</script>

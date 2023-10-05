<template>
  <v-app>
    <v-main>
      <HelloWorld/>
      <mainContainer/>
      <boardView/>
    </v-main>
  </v-app>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import mainContainer from './components/mainPage/mainContainer.vue'
import boardView from './components/board/boardView.vue'

export default {
  name: 'App',

  components: {
    HelloWorld,
    mainContainer,
    boardView,
  },

  data: () => ({
    //
  }),
}
</script>

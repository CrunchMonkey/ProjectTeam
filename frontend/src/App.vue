<template>
  <v-app>
    <v-main>
      <HelloWorld/>
      <mainContainer/>
    </v-main>
  </v-app>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import mainContainer from './components/mainPage/mainContainer.vue'

export default {
  name: 'App',

  components: {
    HelloWorld,
    mainContainer,
  },

  data: () => ({
    //
  }),
}
</script>

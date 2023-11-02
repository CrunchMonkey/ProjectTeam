import { createApp } from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import { createRouter, createWebHistory } from 'vue-router';
import { loadFonts } from './plugins/webfontloader'
import boardView from './components/board/boardView.vue'
import mainView from './components/mainPage/mainContainer.vue'

const routes = [
  { 
    path: '/api/about',
    name: 'About',
    component: boardView },
  { 
    path: '/api/',
    name: 'main',
    component: mainView },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

loadFonts()

createApp(App)
  .use(router)
  .use(vuetify)
  .mount('#app')

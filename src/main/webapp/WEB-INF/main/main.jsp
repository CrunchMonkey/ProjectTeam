<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/vuetify@3.3.13/dist/vuetify.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
</head>
<body>
<div id="app">
	<v-app id="inspire">
		<v-container class="grey lighten-5">
			<v-row no-gutters>
				<v-col cols="12" lg="12">
					<v-app-bar>
						<v-img max-width="100" max-height="50" src="https://fastly.picsum.photos/id/80/100/50.jpg?hmac=rlttmDHdFZt7VpmdTRw_g1qUArCBaVmcrBjwtSFCD3k"></v-img>
						<v-toolbar-title>AppBar Title</v-toolbar-title>
							<v-btn>
									EMAD
							</v-btn>
							<v-btn>
								수정테스트(@)dd
							</v-btn>
					</v-app-bar>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col>
					<v-carousel>
						<v-carousel-item v-for="(color, i) in colors" :key="color">
							<v-sheet :color="color" height="100%" tile>
								<v-row class="fill-height" align="center" justify="center">
									<div class="text-h2">
										Slide {{ i + 1 }}
									</div>
								</v-row>
							</v-sheet>
						</v-carousel-item>
						<!-- <v-carousel-item>
							<v-img lazy-src="https://picsum.photos/id/11/10/6" min-height="500" max-height="500" min-width="500" src="https://picsum.photos/id/11/500/300"></v-img>
						</v-carousel-item> -->
					</v-carousel>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col>
					<v-img class="rounded-xl" lazy-src="https://picsum.photos/id/11/10/6"  max-height="500" min-width="500" src="https://picsum.photos/id/11/500/300"></v-img>
				</v-col>
				<v-col>
					<v-img class="rounded-xl" lazy-src="https://picsum.photos/id/11/10/6" max-height="500" min-width="500" src="https://picsum.photos/id/11/500/300"></v-img>
				</v-col>
				<v-col>
					<v-img class="rounded-xl" lazy-src="https://picsum.photos/id/11/10/6" max-height="500" min-width="500" src="https://picsum.photos/id/11/500/300"></v-img>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col cols="12" lg="12">
      <v-toolbar color="red">

    <v-toolbar-title>My Home</v-toolbar-title>

    <v-toolbar-items>
      <v-btn variant="text">News</v-btn>

      <v-divider vertical></v-divider>

      <v-btn variant="text">Blogg</v-btn>

      <v-divider vertical></v-divider>

      <v-btn variant="text">Mussic</v-btn>
    </v-toolbar-items>
  </v-toolbar>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col>
					<v-carousel cycle>
                    <v-carousel-item v-for="(group, index) in imageGroups" :key="index">
                        <v-row>
                            <v-col v-for="(item, innerIndex) in group" :key="innerIndex">
                                <v-img :src="item.src" alt="Image" class="carousel-image"></v-img>
                            </v-col>
                        </v-row>
                    </v-carousel-item>
                </v-carousel>
				</v-col>
			</v-row>
		</v-container>
	</v-app>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue@3.2.20/dist/vue.global.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vuetify@3.3.13/dist/vuetify.min.js"></script>
<script>
const { createApp } = Vue
const { createVuetify } = Vuetify

const vuetify = createVuetify()

const app = Vue.createApp({
		data () {
			return {
				colors: [
					'primary',
    		        'secondary',
    		        'yellow darken-2',
    		        'red',
    		        'orange',
    		        ],
    		        imageGroups: [
    	                [
    	                    { id: 1, src: 'https://via.placeholder.com/200' },
    	                    { id: 2, src: 'https://via.placeholder.com/200' },
    	                    { id: 3, src: 'https://via.placeholder.com/200' },
    	                ],
    	                [
    	                    { id: 4, src: 'https://via.placeholder.com/200' },
    	                    { id: 5, src: 'https://via.placeholder.com/200' },
    	                    { id: 6, src: 'https://via.placeholder.com/200' },
    	                ],
    	                // Add more groups as needed
    	            ],
    	            randomQuery: Math.random()
				}
			},
		server: {
			wathch: {
				usePoling: true,
			}
		}
	})
	app.use(vuetify).mount('#app')
</script>
</body>
</html>

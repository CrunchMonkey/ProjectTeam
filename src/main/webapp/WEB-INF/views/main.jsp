<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/vuetify@3.3.13/dist/vuetify.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Icons">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
</head>
<body>
<div id="app">
	<v-app id="inspire">
		<v-container class="grey lighten-5">
			<v-row no-gutters>
				<v-col cols="12" lg="12">
					<v-toolbar color="red">
				      	<img class="mr-3" src="https://blob.sololearn.com/avatars/75aeefa4-d611-4799-b2a5-6ba8f06fac7e.jpg" height="40"/>
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
					<v-carousel>
						<v-carousel-item>
							<v-img src="https://fastly.picsum.photos/id/985/1920/600.jpg?hmac=NxdC7UAMQHtkRDJfR1u3B6yM-i4AORTbjS-K5G_Z4Pc" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
						<v-carousel-item>
							<v-img src="https://fastly.picsum.photos/id/985/1920/600.jpg?hmac=NxdC7UAMQHtkRDJfR1u3B6yM-i4AORTbjS-K5G_Z4Pc" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
						<v-carousel-item>
							<v-img src="https://fastly.picsum.photos/id/985/1920/600.jpg?hmac=NxdC7UAMQHtkRDJfR1u3B6yM-i4AORTbjS-K5G_Z4Pc" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
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
				      	<img class="mr-3" src="https://blob.sololearn.com/avatars/75aeefa4-d611-4799-b2a5-6ba8f06fac7e.jpg" height="40"/>
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
			<v-row no-gutters>
				<v-col>
					<v-breadcrumbs bg-color="success" :items="['전체', '프로젝트', 'Fizz']"></v-breadcrumbs>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col>
					<v-carousel cycle height="300px">
						<v-carousel-item>
							<v-row height="auto">
								<v-col align-self="center">
									<v-container class="grey lighten-5">
										<v-row justify="space-between">
											<v-col cols="6">
										<v-btn class="ma-2" color="primary" width="auto">
	                            			프로젝트dddd
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
											<v-col cols="6">
												<v-btn class="ma-2" color="primary">
	                            			프로젝트d
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
										</v-row>
										<v-row>
											<h4>마감일 | 2023.08.01</h4>
										</v-row>
										<v-row>
											<h3>어서오세요. 동물의 숲</h3>
										</v-row>
									</v-container>
	                            </v-col>
	                            <v-col>
									<v-container class="grey lighten-5">
										<v-row justify="space-between">
											<v-col cols="3">
												<v-btn class="ma-2" color="primary">
	                            			프로젝트
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
											<v-col cols="3">
												<v-btn end class="ma-2" color="primary">
	                            			프로젝트d
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
										</v-row>
									</v-container>
	                            </v-col>
	                            <v-col>
									<v-container class="grey lighten-5">
										<v-row justify="space-between">
											<v-col cols="3">
												<v-btn class="ma-2" color="primary">
	                            			프로젝트
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
											<v-col cols="3">
												<v-btn end class="ma-2" color="primary">
	                            			프로젝트d
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
										</v-row>
									</v-container>
	                            </v-col>
	                            <v-col>
									<v-container class="grey lighten-5">
										<v-row justify="space-between">
											<v-col cols="3">
												<v-btn class="ma-2" color="primary">
	                            			프로젝트
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
											<v-col cols="3">
												<v-btn end class="ma-2" color="primary">
	                            			프로젝트d
	                            			<!-- <v-icon end icon="mdi-checkbox-marked-circle"></v-icon> 적용안되서 일단 주석처리-->
	                            		</v-btn>
											</v-col>
										</v-row>
									</v-container>
	                            </v-col>
                        	</v-row>
                    </v-carousel-item>
                </v-carousel>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col cols="2">
					<v-select label="Select" :items="['California', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></v-select>
				</v-col>
				<v-col cols="2">
					<v-select label="Select" :items="['California', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></v-select>
				</v-col>
				<v-col cols="2">
					<v-select label="Select" :items="['California', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></v-select>
				</v-col>
				<v-col cols="3">
					<v-btn-toggle v-model="toggleValue" multiple>
						<v-btn>즐겨찾기</v-btn>
						<v-btn>모집중</v-btn>
					</v-btn-toggle>
				</v-col>
				<v-col cols="3">
					<v-text-field :rules="rules"></v-text-field>
				</v-col>
			</v-row>
			<v-row no-gutters>
				<v-col cols="12" sm="6" md="4" lg="3" >
					<div style="width: 100%; height: 300px;">
						<div style="width: 100%; height: 10%; background-color: red; float: left">
							태그영역
						</div>
						<div style="width: 100%; height: 10%; background-color: orange; float: left">
							마감일
						</div>
						<div style="width: 100%; height: 20%; background-color: yellow; float: left">
							제목
						</div>
						<div style="width: 100%; height: 10%; background-color: green; float: left">
							태그영역
						</div>
						<div style="width: 100%; height: 20%; background-color: blue; float: left">
							아이콘영역
						</div>
						<div style="width: 100%; height: 20%; background-color: pink; float: left">
							아이디/조회수/등등
						</div>
						<div style="width: 100%; height: 10%; background-color: magenta; float: left">
							미정
						</div>
					</div>
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					2번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					3번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					4번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					5번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					6번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					7번째
				</v-col>
				<v-col cols="12" sm="6" md="4" lg="3">
					8번째
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
    	                    { id: 4, src: 'https://via.placeholder.com/200' },
    	                ],
    	                [
    	                    { id: 5, src: 'https://via.placeholder.com/200' },
    	                    { id: 6, src: 'https://via.placeholder.com/200' },
    	                    { id: 7, src: 'https://via.placeholder.com/200' },
    	                    { id: 8, src: 'https://via.placeholder.com/200' },
    	                ],
    	                // Add more groups as needed
    	            ],
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

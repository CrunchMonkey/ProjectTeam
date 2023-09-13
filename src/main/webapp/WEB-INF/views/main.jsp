<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/vuetify@3.3.13/dist/vuetify.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Icons">
  <link href="https://cdn.jsdelivr.net/npm/@mdi/font@5.x/css/materialdesignicons.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
</head>
<body>
<div id="app">
	<v-app id="inspire">
		<v-container>
			<v-row no-gutters>
				<v-col cols="12" lg="12">
					<v-toolbar color="white">
				      	<img class="mr-3" src="https://blob.sololearn.com/avatars/75aeefa4-d611-4799-b2a5-6ba8f06fac7e.jpg" height="40"/>
				      	<v-toolbar-title></v-toolbar-title>
				      	<v-toolbar-items>
				      		<v-btn variant="text"><h3>글쓰기</h3></v-btn>
				      		<v-btn variant="text"><h3>로그인</h3></v-btn>
				      	</v-toolbar-items>
				    </v-toolbar>
				</v-col>
			</v-row>
			<v-row>
				<v-col>	
					<v-carousel :show-arrows="false">
						<v-carousel-item>
							<v-img src="/images/image3.png" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
						<v-carousel-item>
							<v-img src="/images/image2.png" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
						<v-carousel-item>
							<v-img src="/images/image1.png" aspect-ratio="1" max-height="100%" max-width="100%" min-height="100%" cover></v-img>
						</v-carousel-item>
					</v-carousel>
				</v-col>
			</v-row>
			<v-row class="mr-16 ml-16">
				<v-col>
					<v-toolbar color="white">
				      	<v-toolbar-title><h3>🔥이번주 OO 인기글</h3></v-toolbar-title>
				    </v-toolbar>
				</v-col>
			</v-row>
			<v-row class="mr-16 ml-16">
				<v-col cols="12" lg="12">
					<v-btn-toggle v-model="2">
						<v-btn class="text-h5" variant="text">전체</v-btn>
				      	<v-btn class="text-h5" variant="text">군단장 레이드</v-btn>
				      	<v-btn class="text-h5" variant="text">어비스던전</v-btn>
					</v-btn-toggle>
				</v-col>
			</v-row>
			<v-row class="mr-16 ml-16">
				<v-col>
					<v-carousel hide-delimiters="true" show-arrows="hover" height="auto">
						<v-carousel-item>
							<v-row>
								<v-col cols="12" sm="12" md="6" lg="4" xl="3">
									<v-card class="rounded-card" variant="outlined">
										<v-container>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 40px;">
													<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
														<p style="color: #FFFF9F">💀군단장</p>
													</v-btn>
													<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
														<p style="color: #FFFF9F">숙련</p>
													</v-btn>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1 text-h7" style="height: 40px;">
													<p class="font-weight-medium" style="color: #a9a9a9">마감일 | 2023.09.09</p>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1 text-h5" style="height: 80px;">
													<p class="font-weight-black">제목입니다</p>
												</v-col>
											</v-row>
											<v-row no-gutters justify="space-between">
												<v-col class="pa-1 text-h6" style="height: 40px;" cols="5">
													<p>조와와</p>
												</v-col>
												<v-col class="pa-1 text-h6" style="height: 40px;" cols="5">
													<p>👁12 🗨14</p>
												</v-col>
											</v-row>
											</v-container>
										</v-card>
	                            </v-col>
	                            <v-col cols="12" sm="12" md="6" lg="4" xl="3">
									<v-card class="rounded-card" variant="outlined">
										<v-container>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														군단장
													</v-btn>
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														8인
													</v-btn>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>마감일| 2023.09.09</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 60px;">
													<h4>제목입니다</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>조회수/추천수</h4>
												</v-col>
											</v-row>
										</v-container>
									</v-card>
	                            </v-col>
	                            <v-col cols="12" sm="12" md="6" lg="4" xl="3">
									<v-card class="rounded-card" variant="outlined">
										<v-container>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														군단장
													</v-btn>
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														8인
													</v-btn>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>마감일| 2023.09.09</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 60px;">
													<h4>제목입니다</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>조회수/추천수</h4>
												</v-col>
											</v-row>
										</v-container>
									</v-card>
	                            </v-col>
	                            <v-col cols="12" sm="12" md="6" lg="4" xl="3">
									<v-card class="rounded-card" variant="outlined">
										<v-container>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														군단장
													</v-btn>
													<v-btn color="primary" height="20px" prepend-icon="mdi-checkbox-marked-circle">
														8인
													</v-btn>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>마감일| 2023.09.09</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 60px;">
													<h4>제목입니다</h4>
												</v-col>
											</v-row>
											<v-row no-gutters>
												<v-col class="pa-1" style="height: 30px;">
													<h4>조회수/추천수</h4>
												</v-col>
											</v-row>
										</v-container>
									</v-card>
	                            </v-col>
                        	</v-row>
                    </v-carousel-item>
                </v-carousel>
				</v-col>
			</v-row>
			<v-row class="mr-16 ml-16">
				<v-col cols="2">
					<v-select label="레이드 종류" :items=test></v-select>
				</v-col>
				<v-col cols="2">
					<v-select label="레이드 이름" :items="['California', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></v-select>
				</v-col>
				<v-col cols="2">
					<v-select label="숙련정도" :items="['California', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></v-select>
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
			<v-row class="mr-16 ml-16">
			
			
			
				<v-col v-for="data in allBoardData" :key=data.id  cols="12" sm="12" md="6" lg="4" xl="3">
					<v-card class="rounded-card" variant="outlined">
						<v-container>
							<v-row no-gutters>
								<v-col class="pa-1" style="height: 40px;">
									<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
										<p style="color: #FFFF9F">💀{{data.raidDivdNm}}</p>
									</v-btn>
									<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
										<p style="color: #FFFF9F">{{data.proDivNm}}</p>
									</v-btn>
								</v-col>
							</v-row>
							<v-row no-gutters>
								<v-col class="pa-1 text-h7" style="height: 40px;">
									<p class="font-weight-medium" style="color: #a9a9a9">마감일 | {{data.deadLine}}</p>
								</v-col>
							</v-row>
							<v-row no-gutters>
								<v-col class="pa-1 text-h5" style="height: 80px;">
									<p class="font-weight-black">{{data.title}}</p>
								</v-col>
							</v-row>
							<v-row no-gutters>
								<v-col class="pa-1" style="height: 40px;">
									<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
										<p style="color: #FFFF9F">딜러</p>
									</v-btn>
									<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
										<p style="color: #FFFF9F">서포터</p>
									</v-btn>
									<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
										<p style="color: #FFFF9F">제한없음</p>
									</v-btn>
								</v-col>
							</v-row>
							<v-row no-gutters>
								<v-col class="pa-1" style="height: 40px;">
									<img class="mr-3" src="https://fastly.picsum.photos/id/47/32/32.jpg?hmac=UAnh79EfsgmBQFnt0ltsvFYdjLc7bIk-lrhgfxCYeL0"/>
									<img class="mr-3" src="https://fastly.picsum.photos/id/47/32/32.jpg?hmac=UAnh79EfsgmBQFnt0ltsvFYdjLc7bIk-lrhgfxCYeL0"/>
									<img class="mr-3" src="https://fastly.picsum.photos/id/47/32/32.jpg?hmac=UAnh79EfsgmBQFnt0ltsvFYdjLc7bIk-lrhgfxCYeL0"/>
								</v-col>
							</v-row>
							<v-row no-gutters justify="space-between">
								<v-col class="pa-1 text-h6" style="height: 40px;" cols="5">
									<p>{{data.id}}</p>
								</v-col>
								<v-col class="pa-1 text-h6" style="height: 40px;" cols="5">
									<p>👁12 🗨14</p>
								</v-col>
							</v-row>
							</v-container>
					</v-card>
				</v-col>
				
				
				
				
			</v-row>
			<v-row justify="center">
    <v-dialog
      v-model="dialog"
      persistent
      width="1024"
    >
      <template v-slot:activator="{ props }">
        <v-btn
          color="primary"
          v-bind="props"
        >
          Open Dialog
        </v-btn>
      </template>
      <v-card>
        <v-card-title>
          <span class="text-h5">User Profile</span>
        </v-card-title>
        <v-card-text>
          <v-container>
            <v-row>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal first name*"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal middle name"
                  hint="example of helper text only on focus"
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal last name*"
                  hint="example of persistent helper text"
                  persistent-hint
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-text-field
                  label="Email*"
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-text-field
                  label="Password*"
                  type="password"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
              >
                <v-select
                  :items="['0-17', '18-29', '30-54', '54+']"
                  label="Age*"
                  required
                ></v-select>
              </v-col>
              <v-col
                cols="12"
                sm="6"
              >
                <v-autocomplete
                  :items="['Skiing', 'Ice hockey', 'Soccer', 'Basketball', 'Hockey', 'Reading', 'Writing', 'Coding', 'Basejump']"
                  label="Interests"
                  multiple
                ></v-autocomplete>
              </v-col>
            </v-row>
          </v-container>
          <small>*indicates required field</small>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="blue-darken-1"
            variant="text"
            @click="dialog = false"
          >
            Close
          </v-btn>
          <v-btn
            color="blue-darken-1"
            variant="text"
            @click="dialog = false"
          >
            Save
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
			<v-row class="mr-16 ml-16">
				<v-col cols="12">
					1 2 3 4 5 ㅁ
				</v-col>
			</v-row>
			<v-row class="mr-16 ml-16">
				<v-col cols="12">
					footer부분
				</v-col>
			</v-row>
		</v-container>
	</v-app>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@3.2.20/dist/vue.global.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vuetify@3.3.13/dist/vuetify.min.js"></script>
<script>
const { createApp } = Vue
const { createVuetify } = Vuetify

const vuetify = createVuetify()

const app = Vue.createApp({
	created() {
		},
		data () {
			return {
				colors: [
					'primary',
    		        'secondary',
    		        'yellow darken-2',
    		        'orange',
    		        ${name},
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
    	            allBoardData : ${allBoardData},
    	            dialog: false,
  
				}
			},
			methods: {
			    fetchData() {
			      // jQuery AJAX request
			      $.ajax({
			        url: 'http://localhost:8080/test',
			        method: 'GET',
			        success: response => {
			        	console.error(response);
			        	this.data = response;
			        },
			        error: error => {
			          console.error(error);
			        }
			      });
			    }
			}
	})
	app.use(vuetify).mount('#app')
</script>
</body>
</html>

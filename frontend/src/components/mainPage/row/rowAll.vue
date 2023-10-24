<template>
    <v-row class="">
		<v-col v-for="data in list" :key=data.id  cols="12" sm="12" md="6" lg="4" xl="3">
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
	<v-row class="">
      <v-col cols="12">
        <div class="text-center">
          <v-container>
            <v-row justify="center">
              <v-col cols="8">
                <v-container class="max-width">
                  <v-pagination v-on:click="click('안녕하세요')" v-model="page" mclass="my-4" :length="15"></v-pagination>
                </v-container>
              </v-col>
            </v-row>
          </v-container>
        </div>
      </v-col>
	</v-row>
</template>
<script>
import axios from 'axios';
export default {
  name: 'rowAll',
  created() {
    // REST API 엔드포인트 URL

    // Axios를 사용하여 데이터 가져오기
    axios.post('/api/getRaidBoardList', {pagingNum : "0"}, {headers: {'Content-Type': 'application/json',}})
      .then((response) => {
		this.list = response.data;

        // 성공적으로 데이터를 받아온 경우
		//console.log('콘솔로그', this.list[0]);
		
      })
      .catch((error) => {
        // 오류가 발생한 경우
        console.error('데이터를 가져오는 중 오류가 발생했습니다:', error);
      });
  },
  data: () => ({
	list:null,
	page:null,
  }),
  methods: {
	click: function() {
		axios.post('/api/getRaidBoardList', {pagingNum : this.page.toString()}, {headers: {'Content-Type': 'application/json',}})
			.then(response => {
				this.list = response.data;
				console.log('백엔드 응답:', response.data);
			})
			.catch(error => {
				console.error('에러:', error);
			});
		
	}
  },
}
</script>
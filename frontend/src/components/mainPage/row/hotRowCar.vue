<template>
    <v-row class="mr-16 ml-16">
		<v-col>
			<v-carousel hide-delimiters="true" show-arrows="hover" height="auto">
				<v-carousel-item v-for="(item, i) in list" :key="i">
					<v-row>
						<v-col v-for="(i, r) in item" :key="r" cols="12" sm="12" md="6" lg="4" xl="3">
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
					</v-row>
			</v-carousel-item>
		</v-carousel>
		</v-col>
	</v-row>
</template>
<script>
import axios from 'axios';
var abc; //eslint-disable-line no-unused-vars
export default {
  name: 'hotRowCar',
  created() {
    // REST API 엔드포인트 URL
    const apiUrl = '/api/getRaidHotBoardList';

    // Axios를 사용하여 데이터 가져오기
    axios.get(apiUrl)
      .then((response) => {
		this.list = response.data;
		abc = response.data;
        // 성공적으로 데이터를 받아온 경우
		//console.log('콘솔로그', this.list[0]);
		
      })
      .catch((error) => {
        // 오류가 발생한 경우
        console.error('데이터를 가져오는 중 오류가 발생했습니다:', error);
      });
  },
  data: () => ({
	list: [[{"id" : "123"}]],
  }),
}
</script>
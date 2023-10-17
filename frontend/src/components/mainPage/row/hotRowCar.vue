<template>
    <v-row class="">
		<v-col>
			<v-carousel hide-delimiters="true" show-arrows="hover" height="auto">
				<v-carousel-item v-for="(firstItem, i) in list" :key="i">
					<v-row>
						<v-col v-for="(secondItem, r) in firstItem" :key="r" cols="12" sm="12" md="6" lg="4" xl="3">
							<v-card class="rounded-card" variant="outlined">
								<v-container>
									<v-row no-gutters>
										<v-col style="height: 40px;">
											<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
												<p style="color: #FFFF9F">💀{{secondItem.raidDivdNm}}</p>
											</v-btn>
											<v-btn class="mr-1" rounded="xl" color="#282828" height="20px">
												<p style="color: #FFFF9F">{{secondItem.proDivNm}}</p>
											</v-btn>
										</v-col>
									</v-row>
									<v-row no-gutters>
										<v-col class="text-h7" style="height: 40px;">
											<p class="font-weight-medium" style="color: #a9a9a9">마감일 | {{secondItem.deadLine}}</p>
										</v-col>
									</v-row>
									<v-row no-gutters>
										<v-col class="text-h5" style="height: 80px;">
											<p class="font-weight-black">{{secondItem.title}}</p>
										</v-col>
									</v-row>
									<v-row no-gutters>
										<v-col class="text-h6" style="height: 40px;" cols="6">
											<p>{{secondItem.id}}</p>
										</v-col>
										<v-col class="text-h6" style="height: 40px;" cols="6">
											<p>👁{{secondItem.viewCount}} 🗨14</p>
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

export default {
  name: 'hotRowCar',
  created() {
    // REST API 엔드포인트 URL
    const apiUrl = '/api/getRaidHotBoardList';

    // Axios를 사용하여 데이터 가져오기
    axios.get(apiUrl)
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
	list: null,
  }),
}
</script>
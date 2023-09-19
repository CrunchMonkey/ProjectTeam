<template>
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
</template>
<script>

export default {
  name: 'rowAll',

  data: () => ({
  }),
}
</script>
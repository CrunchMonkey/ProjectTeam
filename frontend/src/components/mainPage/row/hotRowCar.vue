<template>
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
					</v-row>
			</v-carousel-item>
		</v-carousel>
		</v-col>
	</v-row>
</template>
<script>

export default {
  name: 'hotRowCar',

  data: () => ({
  }),
}
</script>
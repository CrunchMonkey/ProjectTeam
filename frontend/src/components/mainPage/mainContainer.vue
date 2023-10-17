<template>
	<v-app id="inspire" class="w-75 ma-auto" >
		<v-container>
			<menuBar></menuBar>
			<imageCar></imageCar>
			<v-row class="">
				<v-col>
					<v-toolbar color="white">
				      	<v-toolbar-title><h3>🔥이번주 OO 인기글</h3></v-toolbar-title>
				    </v-toolbar>
				</v-col>
			</v-row>
			<toggleBtn></toggleBtn>
			<hotRowCar></hotRowCar>
			<selectBox></selectBox>
			<rowAll></rowAll>
			<pagingRow></pagingRow>
		</v-container>
	</v-app>
</template>

<script>
import hotRowCar from './row/hotRowCar.vue'
import imageCar from './row/imageCar.vue'
import menuBar from './row/menuBar.vue'
import rowAll from './row/rowAll.vue'
import selectBox from './row/selectBox.vue'
import toggleBtn from './row/toggleBtn.vue'
import pagingRow from './row/pagingRow.vue'

export default {
  name: 'mainContainer',
  components: {
    hotRowCar,
	imageCar,
	menuBar,
	rowAll,
	selectBox,
	toggleBtn,
  pagingRow,
  },
  data: () => ({
	dialog: false,
  }),
}
</script>
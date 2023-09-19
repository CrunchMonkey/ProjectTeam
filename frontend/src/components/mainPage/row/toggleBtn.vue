<template>
    <v-row class="mr-16 ml-16">
		<v-col cols="12" lg="12">
			<v-btn-toggle v-model="toggle_exclusive">
				<v-btn class="text-h5" variant="text">전체</v-btn>
				<v-btn class="text-h5" variant="text">군단장 레이드</v-btn>
				<v-btn class="text-h5" variant="text">어비스던전</v-btn>
			</v-btn-toggle>
		</v-col>
	</v-row>
</template>
<script>

export default {
  name: 'mainToggleBtn',

  data: () => ({
  }),
}
</script>
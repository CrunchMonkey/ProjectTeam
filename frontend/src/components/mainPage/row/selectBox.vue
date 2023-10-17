<template>
    <v-row class="">
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
</template>
<script>

export default {
  name: 'selectBox',

  data: () => ({
  }),
}
</script>
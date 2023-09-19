<template>
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
</template>
<script>

export default {
  name: 'imageCar',

  data: () => ({
  }),
}
</script>
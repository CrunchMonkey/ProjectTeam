<template>
  <v-row class="">
      <v-col cols="12">
        <div class="text-center">
          <v-container>
            <v-row justify="center">
              <v-col cols="8">
                <v-container class="max-width">
                  <v-pagination v-model="page" mclass="my-4" :length="15"></v-pagination>
                </v-container>
              </v-col>
            </v-row>
          </v-container>
        </div>
      </v-col>
		</v-row>
</template>
<script>

export default {
  name: 'pagingRow',

  data: () => ({
  }),
}
</script>
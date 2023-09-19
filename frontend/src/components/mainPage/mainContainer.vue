<template>
	<v-app id="inspire">
		<v-container>
			<menuBar></menuBar>
			<imageCar></imageCar>
			<v-row class="mr-16 ml-16">
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
			
			
			<v-row justify="center">
    <v-dialog
      v-model="dialog"
      persistent
      width="1024"
    >
      <template v-slot:activator="{ props }">
        <v-btn
          color="primary"
          v-bind="props"
        >
          Open Dialog
        </v-btn>
      </template>
      <v-card>
        <v-card-title>
          <span class="text-h5">User Profile</span>
        </v-card-title>
        <v-card-text>
          <v-container>
            <v-row>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal first name*"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal middle name"
                  hint="example of helper text only on focus"
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="4"
              >
                <v-text-field
                  label="Legal last name*"
                  hint="example of persistent helper text"
                  persistent-hint
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-text-field
                  label="Email*"
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-text-field
                  label="Password*"
                  type="password"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
              >
                <v-select
                  :items="['0-17', '18-29', '30-54', '54+']"
                  label="Age*"
                  required
                ></v-select>
              </v-col>
              <v-col
                cols="12"
                sm="6"
              >
                <v-autocomplete
                  :items="['Skiing', 'Ice hockey', 'Soccer', 'Basketball', 'Hockey', 'Reading', 'Writing', 'Coding', 'Basejump']"
                  label="Interests"
                  multiple
                ></v-autocomplete>
              </v-col>
            </v-row>
          </v-container>
          <small>*indicates required field</small>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="blue-darken-1"
            variant="text"
            @click="dialog = false"
          >
            Close
          </v-btn>
          <v-btn
            color="blue-darken-1"
            variant="text"
            @click="dialog = false"
          >
            Save
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
			<v-row class="mr-16 ml-16">
				<v-col cols="12">
					1 2 3 4 5 ㅁ
				</v-col>
			</v-row>
			<footerRow></footerRow>
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
import footerRow from './row/footerRow.vue'

export default {
  name: 'mainContainer',
  components: {
    hotRowCar,
	imageCar,
	menuBar,
	rowAll,
	selectBox,
	toggleBtn,
	footerRow,
  },
  data: () => ({
	dialog: false,
  }),
}
</script>
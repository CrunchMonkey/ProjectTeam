<template>
    <v-row no-gutters>
		<v-col cols="12" lg="12">
			<v-toolbar color="white">
				<img class="mr-3" src="https://blob.sololearn.com/avatars/75aeefa4-d611-4799-b2a5-6ba8f06fac7e.jpg" height="40"/>
				<v-toolbar-title></v-toolbar-title>
				<v-toolbar-items>
					<v-btn variant="text"><h3>글쓰d기</h3></v-btn>
					
					<v-dialog v-model="dialog" persistent width="1024">
						<template v-slot:activator="{ props }">
							<v-btn ariant="text" v-bind="props">
								<h3>로그인</h3>
							</v-btn>
						</template>
						<v-card width="500px">
							<v-card-title>
								<span class="text-h5">회원가입</span>
							</v-card-title>
							<v-card-text>
								<v-container>
									<v-row>
										<v-col cols="12">
											<v-text-field variant="outlined" label="아이디*" required></v-text-field>
										</v-col>
										<v-col cols="12">
											<v-text-field variant="outlined" label="비밀번호*" type="password" required></v-text-field>
										</v-col>
										<v-col cols="12">
											<v-text-field variant="outlined" label="비밀번호 확인*" type="password" required></v-text-field>
										</v-col>
										<v-col cols="12">
											<v-text-field variant="outlined" label="이메일*" required></v-text-field>
										</v-col>
										<v-col cols="12">
											<v-text-field variant="outlined" label="실명*" required></v-text-field>
										</v-col>
										<v-col cols="12">
											<v-text-field variant="outlined" label="닉네임*" required></v-text-field>
										</v-col>
									</v-row>
								</v-container>
							</v-card-text>
							<v-card-actions>
								<v-spacer></v-spacer>
								<v-btn color="blue-darken-1" variant="text" @click="dialog = false">회원가입</v-btn>
								<v-btn color="blue-darken-1" variant="text" @click="dialog = false">닫기</v-btn>
							</v-card-actions>
						</v-card>
					</v-dialog>
				</v-toolbar-items>
			</v-toolbar>
		</v-col>
	</v-row>
</template>
<script>
var abc; //eslint-disable-line no-unused-vars

export default {
  name: 'menuBar',
  data: () => ({
	dialog: false,
  }),
}
</script>
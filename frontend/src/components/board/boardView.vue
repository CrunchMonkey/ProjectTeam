<template>
	<v-app id="inspire">
		<v-container>
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
      <v-row class="">
				<v-col>
          <h2>[웹 프로젝트] 개발 토이프로젝트 [ 프론트엔드, 디자이너 ]팀원을 모집합니다.</h2>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
					<h3>작성 | 0000-00-00</h3>
				</v-col>
			</v-row>
      <v-divider></v-divider>
      <v-row class="">
				<v-col>
					<h3>모집구분</h3>
				</v-col>
        <v-col>
					<h3>OOOO</h3>
				</v-col>
        <v-col>
					<h3>진행방식</h3>
				</v-col>
        <v-col>
					<h3>온/오프라인</h3>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
					<h3>모집인원</h3>
				</v-col>
        <v-col>
					<h3>O명</h3>
				</v-col>
        <v-col>
					<h3>시작예정</h3>
				</v-col>
        <v-col>
					<h3>0000-00-00</h3>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
					<h3>연락방법</h3>
				</v-col>
        <v-col>
					<h3>링크</h3>
				</v-col>
        <v-col>
					<h3>예상기간</h3>
				</v-col>
        <v-col>
					<h3>O개월</h3>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
					<h3>모집분야</h3>
				</v-col>
        <v-col>
					<h3>OOO</h3>
				</v-col>
        <v-col>
					<h3>사용언어</h3>
				</v-col>
        <v-col>
					<h3>OOO</h3>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
          <h2>프로젝트 소개</h2>
				</v-col>
			</v-row>
      <v-row class="">
				<v-col>
          <h3>2004년 새해가 밝았습니다.
어느새 설날이 다가왔습니다.
이때가 되면 생각하는 것은 하나님은 우리에게 또 한 장의 도화지를 주셨다고 생각합니다.
'1년 365일'시간(時間)이라는  도화지(圖畵紙) 위에 실천(實踐)이라는 붓으로, 우리는 인생(人生)이라는 그림을 그리는 것이라 생각을 해봅니다.
그래서 2004년에는 각자 자기가 원하는 그림을 구상하고, 계획하고, 생각하면서, 훌륭한 삶의 그림을 그려야 한다고 생각합니다.
그런데 그림도 무작정 그리면 안됩니다.
열정과 패기를 가지고, 철저한 계획과 준비와 끊임없이 훈련하면서 그려야 합니다.
거기에 언제나 '상냥한 웃음'과 '아름다운 친절'과 '존경의 인사'라는 '물감'을 사용한다면 더욱더  아름다운 그림이 그려지리라 생각합니다. 물론 거기에 '지혜(智慧)'라는 물감까지 첨가하면 더욱 좋겠지요.
그림이라는 말을 쓰니 그 옛날 "한니발 장군"의  일화가 생각납니다.
한니발 장군은 나폴레옹보다 거의 2천년 가까이 앞선 BC 217년에 알프스 산맥을 넘어 로마로 진군했던 '카르타고'의 명장(名將)입니다. 그가 이탈리아 남부 칸나에 평원에서 로마군을 박살낸 ‘칸나에 전투’는 세계 모든 육사(陸士) 교과서에서 다뤄질 정도입니다 . 한니발 장군 부대는 프랑스를 점령하고 알프스산맥을 넘어 세계 최강의 로마를 점령했습니다.
한니발 장군이 젊었을 때 이야기입니다.</h3>
				</v-col>
			</v-row>
      <v-divider></v-divider>
		</v-container>
	</v-app>

</template>

<script>
export default {
  name: 'boardView',
  components: {

  },
  data: () => ({
	  dialog: false,
  }),
}
</script>
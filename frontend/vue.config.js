const { defineConfig } = require('@vue/cli-service')
module.exports = {
  // 빌드 타겟 디렉토리
  outputDir: "../src/main/resources/static",

  devServer: {
    proxy: {
      // API 요청 경로 설정
      '^/api': {
        // 백엔드 서버 주소 설정
        target: 'http://localhost:8081',
        // 경로를 재작성할 때 사용 (옵션)
        pathRewrite: {'^/api': ''},
        // 프록시를 사용할 때 CORS 문제 해결을 위한 옵션 (옵션)
        changeOrigin: true
      }
    }
  },

  pluginOptions: {
    vuetify: {
			// https://github.com/vuetifyjs/vuetify-loader/tree/next/packages/vuetify-loader
		}
  }
};

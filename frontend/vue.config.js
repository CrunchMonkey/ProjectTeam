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
        changeOrigin: true,
        pathRewrite: { '^/api': '' }
      }
    }
  },

  pluginOptions: {
    vuetify: {
			// https://github.com/vuetifyjs/vuetify-loader/tree/next/packages/vuetify-loader
		}
  }
};

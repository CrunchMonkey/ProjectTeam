const { defineConfig } = require('@vue/cli-service')
module.exports = {
  // 빌드 타겟 디렉토리
  outputDir: "../src/main/resources/static",

  devServer: {
    proxy: 'http://localhost:8081'
  },
};
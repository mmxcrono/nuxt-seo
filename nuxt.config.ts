// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: true },
  nitro: {
    compressPublicAssets: true,
    minify: true,
    publicAssets: [
      {
          baseURL: "images",
          dir: "public/images",
          maxAge: 60 * 60 * 24 * 365,
      },
    ],
  },
  css: ['~/assets/css/main.css'],
  runtimeConfig: {
    public: {
      cdnUrl: '',
    },
  },
})

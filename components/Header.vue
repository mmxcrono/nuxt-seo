<script setup lang="ts">
const config = useRuntimeConfig();

const cdn = config.public.cdnUrl;
</script>
<template>
  <header>
    <a href="#">
      <img
        :src="`${cdn}/images/linkedin-logo-svgrepo-com.svg`"
        alt="Home logo"
        width="120"
        height="75"
      />
    </a>
    <nav>
      <ul>
        <li>Home</li>
        <li>About</li>
      </ul>
    </nav>
  </header>
</template>
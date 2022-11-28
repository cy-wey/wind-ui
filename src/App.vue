<template>
    <RouterView/>
</template>

<script lang="ts">

import {provide, ref} from 'vue'
export default {
  name: 'App',
  components: {},
  setup() {
    const width = document.documentElement.clientWidth;
    const menuVisible = ref(width <= 500 ? false : true);
    provide("menuVisible", menuVisible); // set
  }
}
</script>

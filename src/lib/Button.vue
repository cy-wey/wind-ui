<template>
  <button class="gulu-button" :class="{[`theme-${theme}`]: theme}">
    <slot/>
  </button>
</template>

<script lang="ts">
export default {
  name: "Button",
  props: {
    theme: {
      type: String,
      default: 'button'
    }

  }
}
</script>

<style scoped>

</style>
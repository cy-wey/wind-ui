<template>
  <div>
    <h2>Button 示例</h2>

    <Button>你好</Button>
    <Button theme="button">你好</Button>
    <Button theme="link">你好</Button>
    <Button theme="text">你好</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'

export default {

  name: "ButtonDemo",
  components: {Button},
  setup() {
    const onClick = () => {
      console.log('hi');
    }
    return {onClick}
  }


}
</script>

<style scoped>
  .gulu-button {margin-left: 10px;}
</style>
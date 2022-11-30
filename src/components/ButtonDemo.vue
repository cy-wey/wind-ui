<template>
  <div>
    <div>Button 示例</div>
    <h1>示例1</h1>
    <div>
      <Button theme="button">你好</Button>
      <Button theme="link">你好</Button>
      <Button theme="text">你好</Button>
    </div>
    <h1>示例2</h1>
    <div>
      <Button size="big">大大大</Button>
      <Button>普通</Button>
      <Button size="small">小小</Button>
      <br>
      <Button theme="link" size="big">大大大</Button>
      <Button theme="link">普通</Button>
      <Button theme="link" size="small">小小小</Button>
      <br>
      <Button theme="text" size="big">大大大</Button>
      <Button theme="text">普通</Button>
      <Button theme="text" size="small">小小小</Button>

    </div>
    <h1>示例3</h1>
    <div>
      <Button size="big">主要按钮</Button>
      <Button>普通</Button>
      <Button size="small">小小</Button>
      <br>
      <Button theme="link" size="big" level="main">大大大</Button>
      <Button theme="link" level="normal">普通</Button>
      <Button theme="link" size="small" level="danger" >小小小</Button>
      <br>
      <Button theme="text" size="big" level="main">大大大</Button>
      <Button theme="text" level="normal">普通</Button>
      <Button theme="text" size="small" level="danger">小小小</Button>
    </div>
    <h1>示例4</h1>
    <div>
      <Button :disabled="true">禁用按钮</Button>
      <Button theme="link" disabled>禁用按钮</Button>
    </div>
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
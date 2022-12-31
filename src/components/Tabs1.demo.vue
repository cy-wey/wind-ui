<demo>
常规使用
</demo>
<template>
  <Tabs v-model:selected="x">
    <Tab title="导航1">内容1</Tab>
    <Tab title="导航2">内容2</Tab>
    <Tab title="导航3">内容3</Tab>
  </Tabs>
</template>

<script lang="ts">
import {Tabs,Tab} from '../lib/index'
import {ref} from 'vue'
export default {
  name: "TabsDemo",
  components:{
    Tabs,
    Tab
  },
  setup() {
    const x = ref('导航1')
    return {x}
  }

}
</script>

<style scoped>

</style>
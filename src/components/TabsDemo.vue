<template>
  <h4>Tabs示例</h4>
  <h1>示例1</h1>
  <Tabs v-model:selected="x">
    <Tab title="导航1">内容1</Tab>
    <Tab title="导航222222222222">内容222222222222</Tab>
    <Tab title="导航3333">内容3333</Tab>
  </Tabs>
</template>

<script lang="ts">
import Tabs from '../lib/Tabs.vue'
import Tab from '../lib/Tab.vue'
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
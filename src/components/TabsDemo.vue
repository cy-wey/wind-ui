<template>
  <div>
    <div>Tabs 示例</div>
    <Demo :component="Tabs1Demo"/>
  </div>
</template>

<script lang="ts">
import Tabs1Demo from './Tabs1.demo.vue'
import Demo from './Demo.vue'
export default {
  name: "TabsDemo",
  components:{
    Demo
  },
  setup() {
    return {
      Tabs1Demo
    }
  }

}
</script>

<style scoped>

</style>
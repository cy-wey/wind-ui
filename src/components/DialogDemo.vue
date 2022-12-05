<template>
<h3>Dialog示例</h3>
  <h1>示例1</h1>
  <Button @click="toggle">toggle</Button>
  <Dialog v-model:visible="x" :close-onclick-overlay="false"
  :ok="f1" :cancel="f2"
  ></Dialog>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import Dialog from '../lib/Dialog.vue';
import {ref} from 'vue'
export default {
  name: "DialogDemo",
  components: {
    Dialog,
    Button
  },
  setup() {
    const x = ref(false)
    const toggle = () => {
      x.value = !x.value;
    }
    const f1 = () => {
      return false;
    }
    const f2 = () => {
    }
    return {x, toggle,f1,f2}
  }
}
</script>

<style scoped>

</style>
<demo>
常规使用
</demo>
<template>
  <div style="position: relative; z-index: 1">
    <Button @click="toggle">打开对话框</Button>
    <Dialog v-model:visible="x" :close-onclick-overlay="false"
            :ok="f1" :cancel="f2"
    >
      <template v-slot:content>
        <div>hi</div>
        <div>你好</div>
      </template>
      <template v-slot:title>
        <strong>加粗的标题</strong>
      </template>
    </Dialog>
  </div>
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
    return {x, toggle, f1, f2}
  }
}
</script>

<style scoped>

</style>
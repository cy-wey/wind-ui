<template>
  <h3>Dialog示例</h3>
  <h1>示例1</h1>
  <div style="position: relative; z-index: 1">
    <Button @click="toggle">toggle</Button>
    <Dialog v-model:visible="x" :close-onclick-overlay="false"
            :ok="f1" :cancel="f2"
    >
      <template v-slot:content>
        <div>hi</div>
        <div>你好</div>
      </template>
      <template v-slot:title>
        <strong>提示</strong>
      </template>
    </Dialog>
  </div>
  <div style="position: relative; z-index: 2;
  width: 300px; height: 300px; background: red;
"></div>
  <h1>示例2</h1>
  <Button @click="showDialog">show</Button>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import Dialog from '../lib/Dialog.vue';
import {openDialog} from "../lib/openDialog";
import {ref,h} from 'vue'

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
    const showDialog = () => {
      openDialog({
        title: h('strong',{}, '标题'),
        content: '你好',
        ok() {
          console.log('ok');
          return true
        },
        cancel() {
          console.log('cancel');
        }
      })
    }
    return {x, toggle, f1, f2,showDialog}
  }
}
</script>

<style scoped>

</style>
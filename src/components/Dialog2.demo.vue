<demo>
一键打开 Dialog
</demo>
<template>
  <div>
    <Button @click="showDialog">打开对话框</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import {openDialog} from "../lib/openDialog";
import {h} from 'vue'

export default {
  name: "DialogDemo",
  components: {
    Button
  },
  setup() {
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
    return {
      showDialog
    }
  }
}
</script>
<demo>
支持 disabled
</demo>
<template>
  <div>
    <Button :disabled="true">禁用按钮</Button>
    <Button theme="link" disabled>禁用按钮</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'

export default {
  components: {
    Button
  },
}
</script>

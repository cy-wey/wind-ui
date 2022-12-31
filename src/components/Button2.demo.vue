<demo>
支持size
</demo>
<template>
  <div>
    <Button size="big">大大大</Button>
    <Button>普通</Button>
    <Button size="small">小小</Button>
    <br/>
    <Button theme="link" size="big">大大大</Button>
    <Button theme="link">普通</Button>
    <Button theme="link" size="small">小小小</Button>
    <br/>
    <Button theme="text" size="big">大大大</Button>
    <Button theme="text">普通</Button>
    <Button theme="text" size="small">小小小</Button>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index'

export default {
  components: {
    Button
  },
}
</script>

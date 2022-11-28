<template>
  <div>
    我的第一个组件
  </div>
</template>

<script>
export default {
  name: 'Frank',
  props: {
    msg: String
  },
  data() {
    return {
      count: 0
    }
  }
}
</script>

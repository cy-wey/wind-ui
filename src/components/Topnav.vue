<template>
  <div class="topnav">
    <router-link to="/" class="logo">
      <svg class="icon">
        <use xlink:href="#icon-sailboat"></use>
      </svg>
      <span>Wind UI</span>
    </router-link>
    <ul class="menu">
      <li>
        <router-link to="/doc/intro">文档</router-link>
      </li>
    </ul>
    <svg v-if="toggleMenuBottonVisible" class="toggleAside" @click="toggleMenu">
      <use xlink:href="#icon-menu"></use>
    </svg>
  </div>
</template>

<script lang="ts">
import {inject, Ref} from 'vue'

export default {
  props: {
    toggleMenuBottonVisible: {
      type: Boolean,
      default: false
    }
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible')
    const toggleMenu = () => {
      menuVisible.value = !menuVisible.value
    }
    return {toggleMenu}
  }
}

</script>
<style lang="scss" scoped>
.topnav {
  display: flex;
  padding: 10px 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 10;
  justify-content: center;
  align-items: center;
  box-shadow: 0px 0px 3px #bbb;
  background: white;
  > a {
    text-decoration: none;
  }
  > .logo {
    max-width: 16em;
    margin-right: auto;

    > svg {
      width: 32px;
      height: 32px;
      color: #2e46b8;
    }
    > span {
      margin-left: 10px;
      font-size: 26px;

    }
  }

  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;

    > li {
      margin: 0 1em;
    }
  }

  > .toggleAside {
    width: 32px;
    height: 32px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
    background: fade-out(black, 0.9);
  }

  @media (max-width: 500px) {
    > menu {
      display: none;
    }
    > .logo {
      margin: 0 auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>

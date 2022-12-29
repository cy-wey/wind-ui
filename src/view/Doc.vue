<template>
  <div class="layout">
    <Topnav class="nav" toggle-menu-botton-visible/>
    <div class="content">
      <aside v-if="menuVisible">
        <h2>文档</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-start">开始使用</router-link>
          </li>
        </ol>

        <h2>组件列表</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs 组件</router-link>
          </li>
        </ol>
        </ol>

      </aside>
      <main>
        <router-view/>
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import {inject, Ref} from 'vue'
import Topnav from "../components/Topnav.vue";

export default {
  components: {Topnav},
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible')
    return {menuVisible}
  }
}
</script>

<style lang="scss" scoped>

.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;
  > .nav {
    flex-shrink: 0;
  }

  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}

.content {
  display: flex;

  > aside {
    flex-shrink: 0;
  }

  > main {
    flex-grow: 1;
    padding: 16px;
  }
}

aside {

  background: #ffffff;
  width: 150px;
  padding: 16px 0;
  position: fixed;
  top: 80px;
  left: 0;
  padding-top: 0px;
  height: 100%;
  border-right: 1px solid #e8e8e8;
  z-index: 6;

  > h2 {
    margin-top: 4px;
    margin-bottom: 4px;
    padding: 0 16px;
  }

  > ol {
    li {
      > a {
        display: block;
        padding: 4px 16px;
        text-decoration: none;
      }
      .router-link-active {
        background: #e6f7ff;
        color: #18acff;
        border-right: 2px solid #1890ff;
      }
    }
  }
}

main {
  overflow: auto;
}
</style>
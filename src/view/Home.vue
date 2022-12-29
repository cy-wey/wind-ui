<template>
  <div>
    <div class="topNavAndBanner">
      <Topnav/>
      <div class="banner">
        <h1>Wind UI</h1>
        <h2>一个厉害的 UI 框架</h2>
        <p class="action">
          <a href="https://github.com/cy-wey">GitHub</a>
          <router-link to="/doc/intro">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-Vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>骄傲地使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-typescript"></use>
          </svg>
          <h3>基于 Typescript </h3>
          <p>源代码采用 Typescript 书写（非严格检查）</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon--dengpao"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
import Topnav from "../components/Topnav.vue";

export default {
  components: {Topnav}
}
</script>

<style lang="scss" scoped>
$blue: #2e46b8;
$border-radius: 4px;
.topNavAndBanner {
  background: linear-gradient(180deg, rgba(228, 231, 236, 1) 0%, rgba(248, 246, 250, 1) 50%, rgba(243, 241, 250, 1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.topnav {
  background: none;
  box-shadow: none;
}

.features {
  margin: 64px auto;
  width: 400px;

  @media (min-width: 800px) {
    width: 800px;
  }

  @media (min-width: 1200px) {
    width: 1200px;
  }

  > ul {
    display: flex;
    flex-wrap: wrap;

    > li {
      width: 400px;
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
    "icon title"
      "icon text";
      grid-auto-columns: 80px auto;
      grid-template-rows: 1fr auto;

      >svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      > h3 {
        grid-area: title;
        font-size: 28px;
      }

      > p {
        grid-area: text;
      }
    }
  }

}

.banner {
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  > .action {
    padding: 8px 0;

    a {
      margin: 0 8px;
      background: $blue;
      display: inline-block;
      color: #ecf4ff;
      padding: 8px 24px;
      border-radius: $border-radius;

      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>

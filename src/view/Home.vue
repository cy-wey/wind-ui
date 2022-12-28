<template>
  <div>
    <div class="topNavAndBanner">
      <Topnav/>
      <div class="banner">
        <h1>轱辘UI</h1>
        <h2>一个厉害的 UI 框架</h2>
        <p class="action">
          <a href="https://github.com/cy-wey">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <svg class="icon" aria-hidden="true">
        <use xlink:href="#icon-Vue"></use>
      </svg>
      <svg class="icon" aria-hidden="true">
        <use xlink:href="#icon-typescript"></use>
      </svg>
      <svg class="icon" aria-hidden="true">
        <use xlink:href="#icon--dengpao"></use>
      </svg>
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

.features {
  > svg {
    width: 64px;
    height: 64px;
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

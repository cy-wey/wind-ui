<template>
  <button class="gulu-button"
          :class="classes"
          :disabled="disabled"
  >
    <slot/>
  </button>
</template>

<script lang="ts">
import {computed} from 'vue'

export default {
  name: "Button",
  props: {
    theme: {
      type: String,
      default: 'button'
    },
    size: {
      type: String,
      default: 'normal'
    },
    level: {
      type: String,
      default: 'normal'
    },
    disabled: {
      type: Boolean,
      default: false
    }
  },

  setup(props) {
    const {theme, size, level} = props
    const classes = computed(() => {
      return {
        [`gulu-theme-${theme}`]: theme,
        [`gulu-size-${size}`]: size,
        [`gulu-level-${level}`]: level,
      };
    });
    return {classes}
  }
}
</script>

<style lang="scss">
$h: 32px;
$border-color: #d9d9d9;
$color: #333;
$blue: #40a9ff;
$red: red;
$radius: 4px;
$grey: #ccc;
.gulu-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95) & + & {
    margin-left: 8px;
  }

  &:hover, &:focus {
    color: $blue;
    border-color: $blue;
  }

  &:focus {
    outline: none;
  }

  &::-moz-focus-inner {
    border: 0;
  }

  &.gulu-theme-button {
    &.gulu-size-big {
      font-size: 24px;
      height: 48px;
      padding: 0 16px;
    }
    &.gulu-size-small {
      font-size: 12px;
      height: 20px;
      padding: 0 4px;
    }
    &.gulu-level-main {
      background: $blue;
      color: white;
      border-color: $blue;
      &:hover,
      &:focus {
        background: darken($blue, 10%);
        border-color: darken($blue, 10%);
      }
    }

    &.gulu-level-danger {
      background: $red;
      color: white;
      border-color: $red;
      &:hover,
      &:focus {
        background: darken($red, 10%);
        border-color: darken($red, 10%);
      }
    }
  }
  &.gulu-theme-link {
    color: $blue;
    background: none;
    border: none;
    &.gulu-size-big {
      font-size: 24px;
      height: 48px;
      padding: 0 16px;
    }
    &.gulu-size-small {
      font-size: 12px;
      height: 20px;
      padding: 0 4px;
    }

    &.gulu-level-danger {
      color: $red;
    }
  }
  &.gulu-theme-text {
    color: black;
    background: none;
    border: none;
    &.gulu-size-big {
      font-size: 24px;
      height: 48px;
      padding: 0 16px;
    }
    &.gulu-size-small {
      font-size: 12px;
      height: 20px;
      padding: 0 4px;
    }
    &.gulu-level-main {
      color: $blue;
    }

    &.gulu-level-danger {
      color: red;
    }
  }

  &.gulu-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: #666;
      background: #grey;
    }
    &:hover,
    &:focus {
      border: none;
    }
  }
  &.gulu-theme-text, &.gulu-theme-link {
    &[disabled] {
      cursor: not-allowed;
      color: #666;
    }
    &:hover,
    &:focus {
      border: none;
    }
  }
}
</style>
<template>
  <div :class="{ active: this.$route.meta.cool }">
    <el-container>
      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
html,
body {
  height: 100%;
}
.active {
  background-color: blue;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
</style>

<template>
  <div>
    <el-container>
      <el-main v-if="meta.title">
        <router-view />
      </el-main>
    </el-container>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped></style>

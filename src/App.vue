<template>
  <div :class="{ active: this.$route.meta.cool }">
    <el-container>
      <el-backtop :bottom="100">
        <div
          class="zhiding"
          style="
             {
              height: 100%;
              text-align: center;
              color: white;
            }
          "
        >
          点我置顶
        </div>
      </el-backtop>
      <!-- 顶部 -->
      <el-header>
        <!-- 导航栏 -->
        <el-row type="flex" class="row-bg" justify="space-between">
          <!-- 左侧logo -->

          <el-col :xs="0" :sm="1" :md="4" :lg="3" :xl="1"
            ><div class="grid-content bg-purple">
              <img src="../assets/nav01.png" alt="" class="nav_logo" /></div
          ></el-col>

          <!-- 中间搜素框 -->

          <el-col :xs="0" :sm="3" :md="4" :lg="6" :xl="1">
            <div class="grid-content bg-purple-light">
              <el-input placeholder="搜索雪糕" clearable> </el-input></div
          ></el-col>

          <!-- 右侧选项 -->

          <el-col :xs="25" :sm="11" :md="8" :lg="9" :xl="11"
            ><div class="grid-content bg-purple-light">
              <el-menu
                :default-active="activeIndex"
                mode="horizontal"
                select="handleSelect"
                active-text-color="#d2ba96"
              >
                <el-submenu index="1">
                  <template slot="title">关于雪糕</template>
                  <el-menu-item index="1-1">关于公司介绍</el-menu-item>
                  <el-menu-item index="1-2">发展历程</el-menu-item>
                </el-submenu>

                <el-submenu index="2">
                  <template slot="title">雪糕图鉴</template>
                  <el-menu-item index="2-1">钟薛高系列</el-menu-item>
                  <el-menu-item index="2-2">哈根达斯系列</el-menu-item>
                  <el-menu-item index="2-3">茅台冰淇淋</el-menu-item>
                  <el-menu-item index="2-4">梦龙雪糕</el-menu-item>
                </el-submenu>

                <el-menu-item index="3">会员权益</el-menu-item>
                <el-menu-item index="4">联系我们</el-menu-item>
              </el-menu>
            </div></el-col
          >
        </el-row>
      </el-header>
      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      activeIndex: "1",
    };
  },
};
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
.el-header {
  background-color: #f2f2f2;
  height: 100px !important;
  padding: 10px 0;
  position: sticky;
  top: 0;
}
.el-backtop {
  background-color: #e8dcca;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  font-size: 14px;
}
.el-backtop:hover,
.el-backtop:active,
.el-backtop > .zhiding:hover {
  background-color: rgb(5, 160, 250);
  box-shadow: 0 !important;
}

.el-input--suffix .el-input__inner {
  padding-right: 0px;
  margin-left: 50px;
}

.el-menu,
.el-submenu__title:hover,
.el-menu-item:hover,
.el-menu-item:focus {
  background-color: #f2f2f2 !important;
  color: #d2ba96 !important;
}

.el-menu.el-menu--horizontal {
  border-bottom: 0px;
}

.bg-purple-light,
.el-input__inner {
  margin-top: 10px;
}
.el-submenu__title,
.el-menu-item {
  padding: 10px;
  line-height: 40px !important;
}
.nav_logo {
  height: 80px;
  margin-left: 100px;
}
</style>

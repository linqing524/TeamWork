<template>
  <el-container>
    <!-- 头部 -->
    <el-header>雪糕刺客后台管理 </el-header>

    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>后台管理</el-breadcrumb-item>
    </el-breadcrumb>

    <el-container>
      <!-- 左侧 -->
      <el-aside width="25%">
        <!-- <router-view/> -->
        <el-menu
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
        >
          <el-submenu index="1">
            <template slot="title"> 雪糕列表 </template>
            <el-menu-item-group style="width:50%">
              <el-menu-item index="1-1">钟薛高系列</el-menu-item>
              <el-menu-item index="1-2">哈根达斯</el-menu-item>
              <el-menu-item index="1-3">茅台冰淇淋</el-menu-item>
              <el-menu-item index="1-3">梦龙雪糕</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
          <el-submenu index="2">
            <template slot="title"> 会员中心 </template>
            <el-menu-item-group>
              <el-menu-item index="2-1">会员办理</el-menu-item>
              <el-menu-item index="2-2">会员信息</el-menu-item>
              <el-menu-item index="2-3">会员管理</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
          <el-menu-item index="3">资料分析</el-menu-item>
        </el-menu>
      </el-aside>
      <!-- 右侧 -->
      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
    methods:{
        handleOpen(key,keyPath){
          console.log(key,keyPath)
        },
        handleClose(key,keyPath){
            console.log(key,keyPath)
        }
    }
};
</script>

<style scoped>
.el-header,.el-breadcrumb {
  background-color: black;
}
.el-header{
   font-size: 24px;
  line-height: 60px; 
   color: white;
  }
.el-breadcrumb{
    line-height: 3;
    padding-left:4%;
    font-size: 16px;  
}
/* 左侧原有边框 */
.el-menu{
    border-right: 0px;
 }
 .el-aside{
    border-right: solid 1px #e6e6e6;
 }

 
</style>
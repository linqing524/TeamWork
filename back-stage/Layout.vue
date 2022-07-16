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
      <el-aside width="27%" >
        <!-- <router-view/> -->
        <el-menu
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
        >
       
         <el-menu-item index="1" @click="analysis" >
          资料分析
          </el-menu-item>
          <el-submenu index="2">
            <template slot="title"> 雪糕列表 </template>
            <el-menu-item-group style="width:100% text-align: center;">
              <el-menu-item index="2-1" @click="zxg">
                钟薛高
                </el-menu-item>
              <el-menu-item index="2-2" @click="hgds">
                    哈根达斯
                </el-menu-item>
              <el-menu-item index="2-3" @click="ml">梦龙雪糕</el-menu-item>
              <el-menu-item index="2-4" @click="mt">茅台冰淇淋</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title"> 会员中心 </template>
            <el-menu-item-group>
              <el-menu-item index="3-1" @click="handle">会员办理</el-menu-item>
              <el-menu-item index="3-2" @click="news">会员管理</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
          <el-menu-item index="1">退出登陆</el-menu-item>
        </el-menu>
      </el-aside>
      <!-- 右侧 -->
      <el-main width="72%">
            

        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
  
    methods:{
         handleOpen(key,keyPath){
          console.log('open:',key,keyPath)
        },
        handleClose(key,keyPath){
            console.log('path',key,keyPath)
        },
      //  编程时跳转路由    
         zxg(){
           this.$router.push('/ht/zxg')
       },
       hgds(){
        this.$router.push('/ht/hgds')
       },
       ml(){
        this.$router.push('/ht/ml')
       },
        mt(){
        this.$router.push('/ht/mt')
       },
       handle(){
         this.$router.push('/ht/handle')
       },
       news(){
        this.$router.push('/ht/news')
       },
       analysis(){
        this.$router.push('/ht/analysis')
       },

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
    height: 60vh;
 }
 .el-aside{
    border-right: solid 1px #e6e6e6;
 }
 .el-submenu .el-menu-item{
  min-width:0px 
 }
 
</style>
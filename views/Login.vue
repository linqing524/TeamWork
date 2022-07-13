<template>
    <div>
<el-form
      :model="rerForm"
      ref="rerForm"
      label-position="right"
      :rules="rules"
      label-width="100px"
      class="register"
    >
      <h2>登录</h2>
      <el-form-item label="用户名">
        <el-input v-model="rerForm.name" placeholder="请输入用户名"></el-input>
      </el-form-item>
     <el-form-item label="密码">
        <el-input v-model="rerForm.pwd" placeholder="请输入密码"></el-input>
      </el-form-item>
   <el-row>
    <el-button type="primary">快速登录</el-button>
   </el-row>
    </el-form>
    </div>
</template>

<script>
    export default {
        data() {
             return {
      rerForm: {
        name: "",
        phone: "",
        pwd: "",
      },

      rules: {
        name: [
          {
            required: true,
            message: "请输入用户名",
            trigger: "blur", 
          },
          { min: 3, max: 6, message: "长度在3到5个字符", trigger: "blur" },
        ],
      },
    };
  },
};
    
</script>

<style  scoped>
* {
  margin: 0;
  padding: 0;
}
.register {
  width: 400px;
  height: 100%;
  padding: 20px;
  border-radius: 20px;
  background-color: #eee;
  margin-top: 15%;
  margin-left: 35%;
}
.register h2 {
  font-weight: bold;
  color: #1e90ff;
  margin-bottom: 50px;
  text-align: center;
}
.register > .table > input {
  margin: 10px;
  height: 30px;
  width: 250px;
  text-align: center;
}
button {
  width: 300px;
  height: 40px;
  background-color: #1e90ff;
  border: 1px solid white;
  color: white;
  border-radius: 5px;
  margin-left: 100px;
}
</style>
<template>
  <div>
    <el-form
      :model="rerForm"
      ref="rerForm"
      label-position="right"
      :rules="rules"
      label-width="100px"
      class="register"
      status-icon
    >
      <h2>注册</h2>
      <el-form-item label="用户名" prop="name">
        <el-input
          type="text"
          v-model="rerForm.name"
          placeholder="请输入用户名"
          suffix-icon="el-icon-user-solid"
        ></el-input>
      </el-form-item>
      <el-form-item label="手机号" prop="phone">
        <el-input
          type="text"
          v-model="rerForm.phone"
          placeholder="请输入手机号"
          suffix-icon="el-icon-phone"
        ></el-input>
      </el-form-item>
      <el-form-item label="密码" prop="pwd">
        <el-input
          type="password"
          v-model="rerForm.pwd"
          placeholder="请输入密码"
          show-password
        ></el-input>
      </el-form-item>
      <el-form-item label="确认密码" prop="checkpwd">
        <el-input
          type="password"
          v-model="rerForm.checkpwd"
          placeholder="请再次确认密码"
          show-password
        ></el-input>
      </el-form-item>
      <el-form-item>
        <el-button @click="submitForm('rerForm')">提交</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  data() {
    var checkpass = (rule, value, callback) => {
      let exp = /^\d{6}$/;
      if (!exp.test(value)) {
        callback("密码为6位数字");
      } else if (value !== this.rerForm.pwd) {
        callback("两次密码不一致！");
      } else {
        callback();
      }
    };
    return {
      rerForm: {
        name: "",
        phone: "",
        pwd: "",
        checkpwd: "",
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
        pwd: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { pattern: /^\d{6}$/, message: "6位数字", trigger: "blur" },
        ],
        checkpwd: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { validator: checkpass, trigger: "blur" },
        ],
        phone: [
          { required: true, message: "请输入手机号", trigger: "blur" },
          { pattern: /^1[3-9]\d{9}$/, message: "11位号码", trigger: "blur" },
        ],
      },
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          alert("submit success");
        } else {
          alert("submit error");
          return;
        }
      });
    },
  },
};
</script>

<style scoped>
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
  width: 250px;
  height: 40px;
  background-color: #1e90ff;
  border: 1px solid white;
  color: white;
  border-radius: 5px;
}
</style>

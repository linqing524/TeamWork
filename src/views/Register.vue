<template>
  <div class="register">
    <h2>注册</h2>
    <div class="table">
      <input type="text" placeholder="请输入用户名" /><br />
      <input type="phone" placeholder="请输入手机号" /><br />
      <input type="password" placeholder="请输入密码" /><br />
      <button>提交</button>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
body {
  background: #5d4157;
  background: linear-gradient(to right, #a8caba, #5d4157);
  background-size: 400%;
  animation: backdiv 12s infinite;
}
.register {
  width: 400px;
  padding: 20px;
  border: 1px solid white;
  border-radius: 20px;
  text-align: center;
  background-color: #eee;

  position: relative;
  top: 25vh;
  left: 35%;
}
.register > h2 {
  font-weight: bold;
  color: #1e90ff;
}
.register > .table {
  /* width: 300px; */
}
.register > .table > input {
  margin: 10px;
  height: 30px;
  width: 250px;
  text-align: center;
}
</style>

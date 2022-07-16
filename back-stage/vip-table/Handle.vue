<template>
   <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
  <el-form-item label="客户姓名" prop="name">
    <el-input v-model="ruleForm.name" style="width:45%"></el-input>
  </el-form-item>
  <el-form-item label="会员类型" prop="region">
    <!--  -->
    <el-select v-model="ruleForm.region" placeholder="请选择会员类型">
      <el-option label="普通会员" value="vip"></el-option>
      <el-option label="超级会员" value="vvip"></el-option>
    </el-select>
  </el-form-item>
  <el-form-item label="到期时间" required>
    <el-col :span="11">
      <el-form-item prop="date1">
       
        <el-date-picker type="date" placeholder="选择日期" v-model="ruleForm.date1" style="width: 100%;"></el-date-picker>
      </el-form-item>
    </el-col>
    <el-col class="line" :span="2">-</el-col>
    <el-col :span="11">
      <el-form-item prop="date2">
    
        <el-time-picker placeholder="截止时间" v-model="ruleForm.date2" style="width: 100%;"></el-time-picker>
      </el-form-item>
    </el-col>
  </el-form-item>
 
  <el-form-item label="充值类型" prop="type">
  
    <el-checkbox-group v-model="ruleForm.type">
      <el-checkbox label="网络支付" name="type"></el-checkbox>
      <el-checkbox label="现金支付" name="type"></el-checkbox>
      <el-checkbox label="银行卡支付" name="type"></el-checkbox>
    </el-checkbox-group>
  </el-form-item>
 
  
  <el-form-item
    label="充值金额"
    prop="age"
    :rules="[ 
      { required: true, message: '金额不能为空'},
      { type: 'number', message: '金额必须为数字值'}
    ]"
  >
    <el-input type="age" v-model.number="ruleForm.age" autocomplete="off" style="width:40%"></el-input>
  </el-form-item>
  <el-form-item label="剩余金额">
    <span style="display:inline-block;line-height:40px;border:1px solid #DCDFE6;width:200px;border-radius:4px">11111</span>
  </el-form-item>


  <el-form-item label="客户来源" prop="resource" >
    <el-radio-group v-model="ruleForm.resource"> 
      <el-radio label="线上"></el-radio>
      <el-radio label="线下"></el-radio>
    </el-radio-group>
  </el-form-item>
 
  <el-form-item>
    <el-button type="primary" @click="submitForm('ruleForm')">确认</el-button>
    <el-button @click="resetForm('ruleForm')">重置</el-button>
  </el-form-item>
</el-form>
</template>

<script>
  export default {
    
     data() {
      return {
         ruleForm: {
          age:'',
          name: '',
          region: '',
          date1: '',
          date2: '',
          type: [],
          resource: '',
        },
        rules: {
          name: [
            { required: true, message: '请输入姓名', trigger: 'blur' },
            { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
          ],
          region: [
            { required: true, message: '请选择会员类型', trigger: 'change' }
          ],
          date1: [
            { type: 'date', required: true, message: '办卡日期', trigger: 'change' }
          ],
          date2: [
            { type: 'date', required: true, message: '截止时间', trigger: 'change' }
          ],
          type: [
            { type: 'array', required: true, message: '请选择付款类质', trigger: 'change' }
          ],
          resource: [
            { required: true, message: '请选择客户来源', trigger: 'change' }
          ],
        },
         ruleForm1:this. ruleForm, rules1:this. rules
       
      };
    },
     methods: {
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
    }
  }
</script>

<style scoped>
.el-input__inner {
  width: 200px;
}
</style>
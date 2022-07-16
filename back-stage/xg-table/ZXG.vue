<template>
 <div>
  <el-table 
  :data="tableData" 
  ref="singleTable" 
  highlight-current-row
  @current-change="handleCurrentChange"
  style="width: 100%" max-height="400">
    <el-table-column
      type="index"
      width="50">
    </el-table-column>
    <el-table-column  prop="date" label="日期" style="width:20%">
       <template slot-scope="scope">
        <el-input clearable v-model="scope.row.date" placeholder="请输入日期"></el-input>
      </template>
    </el-table-column>
    <el-table-column property="name"  label="名称" style="width:20%"> 
      <template slot-scope="scope">
        <el-input clearable v-model="scope.row.name" placeholder="请输入姓名"></el-input>
      </template>
    </el-table-column>
    <el-table-column prop="price" label="单价(元)" style="width:20%">
      <template slot-scope="scope">
        <el-input clearable v-model="scope.row.price" placeholder="请输入单价"></el-input>
      </template>
    </el-table-column>
    <el-table-column prop="prices" label="批发价(元)" style="width:20%">
         <template slot-scope="scope">
        <el-input clearable v-model="scope.row.prices" placeholder="请输入批发价"></el-input>
      </template>
     </el-table-column>
     <el-table-column
      fixed="right"
      label="操作"
      width="100">
      <template slot-scope="scope">
        <el-button
          @click.native.prevent="deleteRow(scope.$index, tableData)"
          type="text"
          size="small">
          移除
        </el-button>

        <el-button
         @click="handleClick(scope.row)"
          type="text" 
          size="small">编辑</el-button>
        
      </template>
    </el-table-column>
  </el-table>
     <el-button style="width:100%;height:50px;background:#fff;color:#000" icon="el-icon-plus" @click="add" type="primary">添加信息</el-button>
  </div>
    
   
</template>

<script>
export default {
    data() {
      return {
        obj:{
          data:'',
          name:'',
          price:'',
          prices:''
        },
        tableData: [{
          date: '2016-05-02',
          name: '钟薛高1',
          price: '10',
          prices: '8',
        }, {
          date: '2016-05-04',
          name: '钟薛高2',
          price: '20',
          prices: '18',
        }, {
          date: '2016-05-01',
          name: '钟薛高3',
          price: '30',
          prices: '27',
        }, {
          date: '2016-05-03',
          name: '钟薛高4',
          price: '40',
          prices: '36',
        }],
        currentRow:null
      }
    },
     methods: {
       deleteRow(index, rows) {
        rows.splice(index, 1);
      },
      add(){
        this.tableData.push(JSON.parse(JSON.stringify(this.obj)))
      },
      setCurrent(row){
        this.$refs.singleTable.setCurrentRow(row);
      },
      handleCurrentChange(val){
        this.currentRow = val
      }
    },
};
</script>

<style scoped>
 .el-button--primary{
  margin-top: 10%;
 }
</style>
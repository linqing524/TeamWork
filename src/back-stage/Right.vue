<template>
  <el-table :data="tableData" border style="width: 100%">
    <el-table-column  prop="date" label="日期" style="width:20%">
    </el-table-column>
    <el-table-column prop="name" label="名称" style="width:20%"> </el-table-column>
    <el-table-column prop="price" label="单价(元)" style="width:20%">
    </el-table-column>
    <el-table-column prop="prices" label="批发价(元)" style="width:20%"> </el-table-column>
    <el-table-column  label="操作" style="width:20%">
      <template slot-scope="scope">
        <el-button @click.native.prevent="deleteRow(scope.$index,tableData)" type="text" size="small"
          >移除</el-button
        >
        <el-button type="text" size="small">添加</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
export default {
     methods: {
      deleteRow(index,rows) {
        rows.splice(index,1);
      }
    },

    data() {
      return {
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
        }]
      }
    }
};
</script>

<style scoped>
 
</style>
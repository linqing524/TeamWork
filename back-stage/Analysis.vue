<template >
  <!-- 轮播图 -->
  <el-carousel :interval="200000" style="width: 100%; height: 100%">
    <!-- 第一组 -->
    <el-carousel-item >
      <div id="main" style="width: 100%; height: 100%"></div>
    </el-carousel-item>
    <el-carousel-item >
      <div id="main1" style="width: 100%; height: 100%"></div>
    </el-carousel-item>
  </el-carousel>
</template>

<script>
export default {
  methods: {
    // 销量折线图
    Chart() {
      let charts = this.$echarts.init(document.getElementById("main"));
      let option = {
        title: {
          text: "销量",
          textStyle: { color: "white" },
        },
        tooltip: {
          trigger: "axis",
        },
        legend: {
          data: ["梦龙", "茅台", "哈根达斯", "钟薛高"],
          textStyle: { color: "white" },
          top: 20,
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "3%",
          containLabel: true,
        },
        textStyle: { color: "white" },
        backgroundColor: "black",
        xAxis: {
          type: "category",
          boundaryGap: false,
          data: [
            "一月",
            "二月",
            "三月",
            "四月",
            "五月",
            "六月",
            "七月",
            "八月",
            "九月",
            "十月",
            "十一月",
            "十二月",
          ],
        },
        yAxis: {
          type: "value",
          splitLine: {
            lineStyle: { width: 0 },
          },
        },
        series: [
          {
            name: "梦龙",
            type: "line",
            stack: "Total",
            data: [
              220, 182, 191, 234, 290, 330, 310, 450, 345, 234, 220, 344, 120,
              80,
            ],
            lineStyle: { color: "red" },
          },
          {
            name: "茅台",
            type: "line",
            stack: "Total",
            data: [
              150, 232, 201, 154, 190, 330, 410, 432, 401, 354, 290, 130, 90,
            ],
            lineStyle: { color: "yellow" },
          },
          {
            name: "哈根达斯",
            type: "line",
            stack: "Total",
            data: [
              320, 332, 301, 334, 390, 330, 320, 332, 401, 323, 390, 230, 100,
            ],
            lineStyle: { color: "green" },
          },
          {
            name: "钟薛高",
            type: "line",
            stack: "Total",
            data: [
              820, 932, 901, 934, 1290, 1330, 1320, 990, 830, 720, 600, 400,
            ],
            lineStyle: { color: "blue" },
          },
        ],
      };
      charts.setOption(option);
      window.addEventListener("resize",()=>{
        if(charts){charts.resize()}
      })
    },

    // 用户流量图
    Chart1() {
      let chart = this.$echarts.init(document.getElementById("main1"));
      let option = {
        textStyle: { color: "white" },
        backgroundColor: "black",
        title: {
          text: "人流量",
          textStyle: { color: "white" },
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "7%",
          containLabel: true,
        },
        tooltip: {
          trigger: "axis",
          axisPointer: {
            type: "shadow",
          },
        },
        xAxis: {
          type: "category",
          data: [
            "1月",
            "2月",
            "3月",
            "4月",
            "5月",
            "6月",
            "7月",
            "8月",
            "9月",
            "10月",
            "11月",
            "12月",
          ],
        },
        yAxis: {
          type: "value",
        },
        series: [
          {
            data: [120, 200, 150, 240, 320, 430, 540, 654, 978, 765, 345, 109],
            type: "bar",

            itemStyle: {
              normal: {
                color: "orange",
              },
            },
          },
        ],
      };
      chart.setOption(option);
     window.addEventListener("resize",()=>{
        if(chart){chart.resize()}
      })
    },
  },
  mounted() {
    this.Chart()
    this.Chart1() 
  },
};
</script>

<style scoped>

</style>

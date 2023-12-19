<template>
  <div id="test_app">
    <!--echarts的容器-->
    <div id="main" style="width: 90%; height: 70vh"></div>
  </div>
</template>

   
<script>
import * as echarts from "echarts";

export default {
  name: "",
  data() {
    return {
      charts: "",
      opinionData1: ["1", "0", "0", "1", "19", "12"], //数据
      opinionData2: ["0", "2", "2", "42", "181", "187"], //数据
      opinionData3: ["0", "0", "0", "0", "0", "0"], //数据
    };
  },
  methods: {
    drawLine(id) {
      var myChart = echarts.init(document.getElementById(id));
      myChart.setOption({
        title: {
          left: "3%",
          top: "5%",
          text: "山东省威海市疫情趋势", //标题文本，支持使用 \n 换行
          subtext: "数据来自山东省威海市卫健委",
        },
        tooltip: {
          trigger: "axis",
        },
        legend: {
          align: "right", //文字在前图标在后
          left: "13%",
          top: "15%",
          data: ["疑似", "确诊", "死亡"],
        },
        color: ["rgb(255,96,64)", "rgb(230, 197, 91)", "rgb(0, 0, 0)"],
        grid: {
          top: "30%",
          left: "5%",
          right: "5%",
          bottom: "5%",
          containLabel: true,
        },

        toolbox: {
          feature: {
            saveAsImage: {}, //保存为图片
          },
        },
        xAxis: {
          type: "category",
          boundaryGap: true,
          axisTick: {
            alignWithLabel: true, //保证刻度线和标签对齐
          },
          data: ["2022-7", "2022-8", "2022-9", "2022-10", "2022-11", "2022-12"], //x坐标的名称
        },
        yAxis: {
          type: "value",
          boundaryGap: true,
          splitNumber: 6, //纵坐标数
          interval: 30, //强制设置坐标轴分割间隔
        },

        series: [
          {
            name: "疑似",
            type: "line", //折线图line;柱形图bar;饼图pie
            stack: "疑似",
            itemStyle: {
              color: "rgb(255,96,64)", //改变折线点的颜色
              lineStyle: {
                color: "rgb(255,96,64)", //改变折线颜色
              },
            },
            data: this.opinionData1,
          },
          {
            name: "确诊",
            type: "line", //折线图line;柱形图bar;饼图pie
            stack: "确诊",
            itemStyle: {
              color: "rgb(230, 197, 91)", //改变折线点的颜色
              lineStyle: {
                color: "rgb(230, 197, 91)", //改变折线颜色
              },
            },
            data: this.opinionData2,
          },
          {
            name: "死亡",
            type: "line", //折线图line;柱形图bar;饼图pie
            stack: "死亡",
            itemStyle: {
              color: "rgb(0,0,0)", //改变折线点的颜色
              lineStyle: {
                color: "rgb(0,0,0)", //改变折线颜色
              },
            },
            data: this.opinionData3,
          },
        ],
      });
      /*窗口尺寸发生变化时，echarts 实例重置尺寸*/
      window.addEventListener("resize", function () {
        myChart.resize();
      });
    },
  },
  //调用
  mounted() {
    this.$nextTick(function () {
      this.drawLine("main");
    });
  },
};
</script>
  
  
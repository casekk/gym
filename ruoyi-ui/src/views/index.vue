<template>
  <el-card style="background-color: #5f7730">

    <el-row :gutter="10">
      <el-card>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="EquipmentCount" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="chainMap" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

      </el-card>
    </el-row>


    <el-row :gutter="10">
      <el-card>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="demo3" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="demo4" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

      </el-card>
    </el-row>

    <el-row :gutter="10">
      <el-card>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="demo5" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

        <el-col :span="8" style="width: 620px">
          <el-card>
            <div id="demo6" style="width:auto;height:400px;background-color: #4AB7BD" ></div>
          </el-card>
        </el-col>

      </el-card>
    </el-row>



  </el-card>

</template>
<script>
import { getEquipmentCount } from "@/api/equipment/equipment";
import { getProvinceStoreCount } from "@/api/store/store";

import 'echarts/lib/chart/map'  //内置好的地图
import 'echarts/map/js/china'    //内置好的地图省份

export default {

  name:"index",
  data(){
    return{
      mapOptions: {
        //标题样式
        title: {
          text: "不同省份的门店个数",
          left: "center",
          top: "4%",
          textStyle: {
            color: "#3A7CA5",
            fontSize: 24,
            textShadowBlur: 10, //文字本身的阴影长度。
            // textShadowColor: "#33ffff",
          }
        },
        //这里设置提示框 (鼠标悬浮效果)
        tooltip: {
          trigger: 'item',
          //提示框浮层的背景颜色。 (鼠标悬浮后的提示框背景颜色)
          backgroundColor: "#8AC0C0",

          formatter: function (params) {
            var value = params.value;
            if (isNaN(value)) { // 数据不存在时显示为0
              value = 0;
            }
            return params.name + ': ' + value + '人';
          }
        },
        geo: { //地理坐标系组件。地理坐标系组件用于地图的绘制
          type: "map",
          // map: "map",
          roam: true, //否开启鼠标缩放和平移漫游。默认不开启。
          zoom: 1.5, //当前视角的缩放比例。越大比例越大
          label: { //地图上显示文字提示信息
            show: true,
            color: "#F2A65A",
            fontSize: 14 //字体大小
          },
          itemStyle: { //地图区域的多边形 图形样式。
            areaColor: "#FFF5D7 ", //地图区域的颜色。
            borderColor: "#A2D5F2", //图形的描边颜色。
            shadowColor: 'rgba(230,130, 70, 0.5)', //橙色
            shadowBlur: 5, //图形阴影的模糊大小
            emphasis: { //高亮状态下的多边形和标签样式。
              focus: 'self'
            }
          },
          tooltip: {
            show: true,
            trigger: "item",
            alwaysShowContent: false,
            backgroundColor: "#0C121C",
            borderColor: "rgba(0, 0, 0, 0.16);",
            hideDelay: 100,
            triggerOn: "mousemove",
            enterable: true,
            textStyle: {
              color: "#DADADA",
              fontSize: "12",
              width: 20,
              height: 30,
              overflow: "break",
            },
            showDelay: 100
          },
        },
        tooltip: {
          trigger: "item",
          formatter: function (params) {
            var value = params.value;
            if (isNaN(value)) { // 数据不存在时显示为0
              value = 0;
            }
            return params.name + '  就业人数: ' + value;
          }
        },
        //视觉映射组件
        visualMap: {
          top: 'center',
          left: 'left',
          // 数据的范围
          min: 0,
          max: 5,
          text: ['高', '低'],
          realtime: true, //拖拽时，是否实时更新
          calculable: true, //是否显示拖拽用的手柄
          inRange: {
            color: ["#50a3ba", "#eac736", "#d94e5d"],
          },
          textStyle: {
            color: "#fff",
          }
        },
        series: [{
          name: '就业',
          type: 'map',
          mapType: 'china',
          roam: true,
          itemStyle: { //地图区域的多边形 图形样式。
            areaColor: "#FFF5D7 ", //地图区域的颜色。
            borderColor: "#A2D5F2", //图形的描边颜色。
            shadowColor: 'rgba(230,130, 70, 0.5)', //橙色
            shadowBlur: 5, //图形阴影的模糊大小
            emphasis: { //高亮状态下的多边形和标签样式。
              focus: 'self'
            }
          },
          itemStyle: {
            //地图区域的多边形 图形样式
            normal: {
              //是图形在默认状态下的样式
              label: {
                show: true, //是否显示标签
                textStyle: {
                  color: "black"
                }
              }
            },
            zoom: 1,
            //地图缩放比例,默认为1
            emphasis: {
              //是图形在高亮状态下的样式,比如在鼠标悬浮或者图例联动高亮时
              label: {
                show: true
              }
            }
          },
          label: {
            show: true,
            formatter(value) {
              return value.data.value[2];
            },
            color: "#fff",
          },

          top: '0%',
          left: '15%',
          data: []
        }]
      }
    };
  },

  mounted() {
    this.showEquipmentCount();
    this.showProvince();
  },
  methods:{
    //不同省份的门店个数
    showProvince(){
      getProvinceStoreCount().then(response=>{
        //地图填充就业人数数据
        this.mapOptions.series[0].data = response.data;
        console.info(this.mapOptions.series[0].data);
        this.showChainMap()
      })
    },

    //显示地图
    showChainMap(){
      let showChainMap=this.$echarts.init(document.getElementById("chainMap"))
      showChainMap.setOption(this.mapOptions)

    },




    //不同器材数量分析
    showEquipmentCount(){
       let showEquipmentCount=this.$echarts.init(document.getElementById("EquipmentCount"));
       getEquipmentCount().then(response=>{
        let names=[]; //名称
        let values=[]; //数量
        let array = response.data;
        console.info(response.data);
        for(let i in array){
          names.push(array[i].eqName);
          values.push(array[i].num)
        }

        showEquipmentCount.setOption( {
          title:{
            text:'统计不同器材数量'
          },
          xAxis: {
            type: 'category',
            data: names,
          },
          yAxis: {
            type: 'value'
          },
          series: [
            {
              data: values,
              type: 'bar'
            }
          ]
        })
      })

    }

  }


}
</script>
<style>

</style>

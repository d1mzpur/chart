<!--
	THIS EXAMPLE WAS DOWNLOADED FROM https://echarts.apache.org/examples/en/editor.html?c=sankey-simple
-->
<!DOCTYPE html>
<html lang="en" style="height: 100%">
<head>
  <meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
  <div id="container" style="height: 100%"></div>

  
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>
  <!-- Uncomment this line if you want to dataTool extension
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/extension/dataTool.min.js"></script>
  -->
  <!-- Uncomment this line if you want to use gl extension
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts-gl@2/dist/echarts-gl.min.js"></script>
  -->
  <!-- Uncomment this line if you want to echarts-stat extension
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts-stat@latest/dist/ecStat.min.js"></script>
  -->
  <!-- Uncomment this line if you want to use map
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@4.9.0/map/js/china.js"></script>
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@4.9.0/map/js/world.js"></script>
  -->
  <!-- Uncomment these two lines if you want to use bmap extension
  <script type="text/javascript" src="https://api.map.baidu.com/api?v=3.0&ak=YOUR_API_KEY"></script>
  <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/extension/bmap.min.js"></script>
  -->

  <script type="text/javascript">
    var dom = document.getElementById('container');
    var myChart = echarts.init(dom, null, {
      renderer: 'canvas',
      useDirtyRect: false
    });
    var app = {};
    
    var option;

    option = {
        title: {
            text: 'Sankey Diagram'
        },
        series: {
            type: 'sankey',
            layout: 'none',
            emphasis: {
              focus: 'adjacency'
        },
        tooltip: {
            trigger: 'item',
            triggerOn: 'mousemove'
        },
        label: {
            position: "inside",
            overflow: "break",
            show: true,
            color: "#FFFFFF",
            formatter: '{b}: {c}'
        },
        nodeGap: 8,
        nodeWidth: 60,
        nodeAlign: 'justify',
        data: [
            {
            "name": "H",
            "itemStyle": {
                "color": '#00B04F',
            },
            "value": "455"
            },
            {
            "name": "Storage",
            "itemStyle": {
                "color": '#3F3F3F',
                },
            "value": "758"
            },
            {
            "name": "ExportHarvest",
            "itemStyle": {
                "color": '#000000',
                },
            "value": "174"
            },
            {
            "name": "StoreHarvest",
            "itemStyle": {
                "color": '#01B0F2',
                },
            "value": "129"
            },
            {
            "name": "Enjoy",
            "itemStyle": {
            "color": '#FE0000',
                },
            "value": "614"
              },
            {
            "name": "ExportEnjoy",
            "itemStyle": {
            "color": '#000000',
                },
            "value": "15"
            },
            {
            "name": "StoreEnjoy",
            "itemStyle": {
            "color": '#01B0F1',
                },
            "value": "129"
            },
            ],
            links: [
              {
                "source": "H",
                "target": "Storage",
                "value": "455",
              },
              {
                "source": "ExportHarvest",
                "target": "Storage",
                "value": "174",
              },
              {
                "source": "StoreHarvest",
                "target": "Storage",
                "value": "129",
              },
              {
                "source": "Storage",
                "target": "Enjoy",
                "value": "614",
              },
              {
                "source": "Storage",
                "target": "ExportEnjoy",
                "value": "15",
              },
              {
                "source": "Storage",
                "target": "StoreEnjoy",
                "value": "129",
              },
            ]
    }
};

    if (option && typeof option === 'object') {
      myChart.setOption(option);
    }

    window.addEventListener('resize', myChart.resize);
  </script>
</body>
</html>
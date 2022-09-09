var dom = document.getElementById('chart-container');
var myChart = echarts.init(dom, null, {
    renderer: 'canvas',
    useDirtyRect: false
});
var app = {};

var option;
myChart.showLoading();
const ROOT_PATH = 'https://testing.d1mzpur.xyz/sankey/api-view.php?projectName=';
const params = new URLSearchParams(window.location.search);
const path =  params.get("projectName");
const test = 'https://testing.d1mzpur.xyz/sankey/aku.json';

$.getJSON(ROOT_PATH + path,  function (data)  {
      myChart.hideLoading();
        option = {
        series: [{
            type: 'sankey',
            left: -100,
            top: 50.0,
            right: 100,
            bottom: 50,
            draggable: false,
            nodeGap: 30,
            emphasis: {
                focus: 'adjacency'
            },
            data: data.nodes,
            links: data.links,
            label: {
                position: "top",
                overflow: "break",
                show: true,
                color: "#000000",
                formatter: '{b}: {c}'
            },
            lineStyle: {
            color: 'source',
            curveness: 0.2
          }
        }],
        tooltip: {
            trigger: 'item',
            formatter: function(params) { return params.value},
        }
    };


if (option && typeof option === 'object') {
    myChart.setOption(option);
}

myChart.on('click', function(params) {
  // Print name in console
  console.log(params.name);
});

window.addEventListener('resize', myChart.resize);

});
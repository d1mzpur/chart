var dom = document.getElementById('chart-container');
var myChart = echarts.init(dom, null, {
    renderer: 'canvas',
    useDirtyRect: false
});
var app = {};

var option;
myChart.showLoading();
const root = 'https://echarts.apache.org/examples';
const params = new URLSearchParams(window.location.search);
const path =  params.get("id");
console.log("id:", path);

$.get(path, function (data){
      myChart.hideLoading();
        option = {
        series: [{
            type: 'sankey',
            left: -180.0,
            top: 50.0,
            right: 50.0,
            bottom: 50.0,
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
            trigger: 'item'
        }
    };


if (option && typeof option === 'object') {
    myChart.setOption(option);
}

window.addEventListener('resize', myChart.resize);

});
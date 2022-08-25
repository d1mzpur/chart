var dom = document.getElementById('chart-container');
var myChart = echarts.init(dom, null, {
    renderer: 'canvas',
    useDirtyRect: false
});
var app = {};

var option;
myChart.showLoading();
$.get('sundaya.json', function (data){
      myChart.hideLoading();
    option = {
        series: [{
            type: 'sankey',
            left: 50.0,
            top: 50.0,
            right: 50.0,
            bottom: 50.0,
            draggable: false,
            nodeGap: 30,
            data: data.nodes,
            links: data.links,
            lineStyle: {
                color: 'source',
                curveness: 0.5
            },
            itemStyle: {
                color: '#1f77b4',
                borderColor: '#1f77b4'
            },
            label: {
                position: "top",
                overflow: "break",
                show: true,
                color: "#000000",
                formatter: '{b}: {c}'
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
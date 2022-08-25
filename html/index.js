var dom = document.getElementById('chart-container');
var myChart = echarts.init(dom, null, {
    renderer: 'canvas',
    useDirtyRect: false
});
var app = {};

var option;

option = {
    series: [{
        type: 'sankey',
        left: 50.0,
        top: 50.0,
        right: 50.0,
        bottom: 50.0,
        draggable: false,
        nodeGap: 30,
        data: [{
                "name": "HM1",
                "itemStyle": {
                    "color": '#00B04F',
                },
                "value": "151"
            },
            {
                "name": "HM2",
                "itemStyle": {
                    "color": '#00B04F',
                },
                "value": "151"
            },
            {
                "name": "HM3",
                "itemStyle": {
                    "color": '#00B04F',
                },
                "value": "153"
            },
            {
                "name": "MT",
                "itemStyle": {
                    "color": '#00B04F',
                },
                "value": "455"
            },
            {
                "name": "H",
                "itemStyle": {
                    "color": '#00B04F',
                },
                "value": "455"
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
                "name": "Storage",
                "itemStyle": {
                    "color": '#3F3F3F',
                },
                "value": "758"
            },
            {
                "name": "Enjoy",
                "itemStyle": {
                    "color": '#FE0000',
                },
                "value": "614"
            },
            {
                "name": "StoreEnjoy",
                "itemStyle": {
                    "color": '#01B0F1',
                },
                "value": "129"
            },
            {
                "name": "ExportEnjoy",
                "itemStyle": {
                    "color": '#000000',
                },
                "value": "15"
            },
            {
                "name": "Aircon",
                "itemStyle": {
                    "color": '#FE0000',
                },
                "value": "325"
            },
            {
                "name": "Utility",
                "itemStyle": {
                    "color": '#FE0000',
                },
                "value": "166"
            },
            {
                "name": "Light",
                "itemStyle": {
                    "color": '#FE0000',
                },
                "value": "55.3"
            },
            {
                "name": "Other",
                "itemStyle": {
                    "color": '#FE0000',
                },
                "value": "67.5"
            },

        ],
        links: [{
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
            {
                "source": "HM1",
                "target": "MT",
                "value": "151",
            },
            {
                "source": "HM2",
                "target": "MT",
                "value": "151",
            },
            {
                "source": "HM3",
                "target": "MT",
                "value": "153",
            },
            {
                "source": "MT",
                "target": "H",
                "value": "455",
            },
            {
                "source": "Enjoy",
                "target": "Aircon",
                "value": "325",
            },
            {
                "source": "Enjoy",
                "target": "Utility",
                "value": "166",
            },
            {
                "source": "Enjoy",
                "target": "Light",
                "value": "55.3",
            },
            {
                "source": "Enjoy",
                "target": "Other",
                "value": "67.5",
            },
        ],
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
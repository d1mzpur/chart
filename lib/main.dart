import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, Object>> data = [];

  List<Map<String, Object>> links = [];



  getData1() async {
    const dataObj = [
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
    ];

    const linksObj = [
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
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
    });
  }

  getData2() async {
    const dataObj = [
      {
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
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "174"
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
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
    ];

    const linksObj = [
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
        "source": "H",
        "target": "Storage",
        "value": "455",
      },
      {
        "source": "Store",
        "target": "Storage",
        "value": "174",
      },
      {
        "source": "Export",
        "target": "Storage",
        "value": "129",
      },
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
    });
  }

  getData3() async {
    const dataObj = [
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
        "value": "758",
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "614"
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
      {
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "15"
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
        },
        "value": "129"
      },
    ];

    const linksObj = [
      {
        "source": "Storage",
        "target": "Enjoy",
        "value": "614",
      },
      {
        "source": "Storage",
        "target": "Store",
        "value": "15",
      },
      {
        "source": "Storage",
        "target": "Export",
        "value": "129",
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
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
    });
  }

  @override
  void initState() {
    super.initState();
    getData1();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Echart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.access_alarm),
            onPressed: () {
              getData1();
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Echarts(
            reloadAfterInit: true,
            option: '''
              {
                tooltip: {
                  trigger: 'item',
                  triggerOn: 'mousemove'
                },
                series: {
                  type: 'sankey',
                  layout: 'none',
                  emphasis: {
                    focus: 'adjacency'
                },
                layoutIterations: 0,
                nodeGap: 8,
                height: "50%",
                nodeWidth: 60,
                nodeAlign: 'justify',
                data:  ${jsonEncode(data)},
                links: ${jsonEncode(links)},
                draggable: false,
                label: {
                  position: "inside",
                  overflow: "break",
                  show: true,
                  color: "#FFFFFF",
                  formatter: '{b}: {c}'
                },
                }
              }
            ''',
            extraScript: '''
              chart.on('click', (params) => {
                if(params.componentType === 'series') {
                  Messager.postMessage(JSON.stringify({
                    payload: params.dataIndex,
                  }));
                }
              });
            ''',
            onMessage: (String message) {
              Map<String, dynamic> messageAction = jsonDecode(message);
              print(messageAction);
              final item = data[messageAction['payload']];

              if ("${item['name']}" == "H") {
                getData2();
              } else if ("${item['name']}" == "Storage") {
                getData1();
              } else if ("${item['name']}" == "Enjoy") {
                getData3();
              }
            },
          ),
        ),
      ),
    );
  }
}

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

  String arah = '';

  getData1({required String arah}) async {
    const dataObj = [
      {
        "name": "H",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "1"
      },
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
        "value": "1"
      },
      {
        "name": "ExportHarvest",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "1"
      },
      {
        "name": "StoreHarvest",
        "itemStyle": {
          "color": '#01B0F2',
        },
        "value": "1"
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "1"
      },
      {
        "name": "ExportEnjoy",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "1"
      },
      {
        "name": "StoreEnjoy",
        "itemStyle": {
          "color": '#01B0F1',
        },
        "value": "1"
      },
    ];

    const linksObj = [
      {
        "source": "H",
        "target": "Storage",
        "value": 1,
      },
      {
        "source": "ExportHarvest",
        "target": "Storage",
        "value": 1,
      },
      {
        "source": "StoreHarvest",
        "target": "Storage",
        "value": 1,
      },
      {
        "source": "Storage",
        "target": "Enjoy",
        "value": 1,
      },
      {
        "source": "Storage",
        "target": "ExportEnjoy",
        "value": 1,
      },
      {
        "source": "Storage",
        "target": "StoreEnjoy",
        "value": 1,
      },
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
      arah = arah;
    });
  }

  getData2({required String arah}) async {
    const dataObj = [
      {
        "name": "HM1",
        "itemStyle": {
          "color": '#00B04F',
        },
      },
      {
        "name": "HM2",
        "itemStyle": {
          "color": '#00B04F',
        },
      },
      {
        "name": "HM3",
        "itemStyle": {
          "color": '#00B04F',
        },
      },
      {
        "name": "MT",
        "itemStyle": {
          "color": '#00B04F',
        },
      },
      {
        "name": "H",
        "itemStyle": {
          "color": '#00B04F',
        },
      },
      {
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        }
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
        }
      },
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
      },
    ];

    const linksObj = [
      {
        "source": "HM1",
        "target": "MT",
        "value": 3,
      },
      {
        "source": "HM2",
        "target": "MT",
        "value": 3,
      },
      {
        "source": "HM3",
        "target": "MT",
        "value": 3,
      },
      {
        "source": "MT",
        "target": "H",
        "value": 9,
      },
      {
        "source": "H",
        "target": "Storage",
        "value": 9,
      },
      {
        "source": "Store",
        "target": "Storage",
        "value": 9,
      },
      {
        "source": "Export",
        "target": "Storage",
        "value": 9,
      },
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
      arah = arah;
    });
  }

  getData3({required String arah}) async {
    const dataObj = [
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
      {
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        }
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
        }
      },
      {
        "name": "Aircon",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
      {
        "name": "Utility",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
      {
        "name": "Light",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
      {
        "name": "Other",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
    ];

    const linksObj = [
      {
        "source": "Storage",
        "target": "Enjoy",
        "value": 0,
      },
      {
        "source": "Storage",
        "target": "Store",
        "value": 10,
      },
      {
        "source": "Storage",
        "target": "Export",
        "value": 10,
      },
      {
        "source": "Storage",
        "target": "Enjoy",
        "value": 8,
      },
      {
        "source": "Enjoy",
        "target": "Aircon",
        "value": 5,
      },
      {
        "source": "Enjoy",
        "target": "Utility",
        "value": 1,
      },
      {
        "source": "Enjoy",
        "target": "Light",
        "value": 1,
      },
      {
        "source": "Enjoy",
        "target": "Other",
        "value": 1,
      },
    ];

    setState(() {
      data = dataObj;
      links = linksObj;
      arah = arah;
    });
  }

  @override
  void initState() {
    super.initState();
    getData1(arah: "justify");
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
              getData1(arah: "justify");
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
                nodeAlign: "${arah}",
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
                getData2(arah: "right");
                print(item);
              } else if ("${item['name']}" == "Storage") {
                getData1(arah: "justify");
              } else if ("${item['name']}" == "Enjoy") {
                getData3(arah: "right");
              }
            },
          ),
        ),
      ),
    );
  }
}

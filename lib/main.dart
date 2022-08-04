import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_echarts/flutter_echarts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      },
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
      },
      {
        "name": "ExportHarvest",
        "itemStyle": {
          "color": '#000000',
        },
      },
      {
        "name": "StoreHarvest",
        "itemStyle": {
          "color": '#01B0F2',
        },
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
      },
      {
        "name": "EnjoyStore",
        "itemStyle": {
          "color": '#000000',
        }
      },
      {
        "name": "ExportStore",
        "itemStyle": {
          "color": '#01B0F1',
        }
      },
    ];

    const linksObj = [
      {
        "source": "H",
        "target": "Storage",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "ExportHarvest",
        "target": "Storage",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "StoreHarvest",
        "target": "Storage",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "Storage",
        "target": "Enjoy",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "Storage",
        "target": "EnjoyStore",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "Storage",
        "target": "ExportStore",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
    ];

    this.setState(() {
      this.data = dataObj;
      this.links = linksObj;
    });
  }

  getData2() async {
    await Future.delayed(Duration(seconds: 4));

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
    ];

    const linksObj = [
      {
        "source": "HM1",
        "target": "MT",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "HM2",
        "target": "MT",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
      {
        "source": "HM3",
        "target": "MT",
        "value": 1,
        "lineStyle": {
          "color": 'gradient',
        }
      },
    ];

    this.setState(() {
      data.addAll(dataObj);
      links.addAll(linksObj);
    });
  }

  @override
  void initState() {
    super.initState();
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Echarts(
                  option: '''
                    {
                      tooltip: {
                        trigger: 'item',
                        triggerOn: 'click'
                      },
                      series: {
                        type: 'sankey',
                        layout: 'none',
                        emphasis: {
                          focus: 'adjacency'
                        },
                      layoutIterations: 0,
                      nodeGap:20,
                      height: "50%",
                      nodeWidth: 50,
                      nodeAlign: "right",
                      data:  ${jsonEncode(data)},
                      links: ${jsonEncode(links)},
                      draggable: false,
                      label: {
                        position: "insideLeft",
                        show: true,
                        color: "#ffffff",
                        formatter: '{b}'
                      },
                      }
                    }
                  ''',
                  extraScript: '''
                    chart.on('click', (params) => {
                      if(params.componentType === 'series') {
                        Messager.postMessage(JSON.stringify({
                          type: 'select',
                          payload: params.dataIndex,
                        }));
                      }
                    });
                  ''',
                  onMessage: (String message) {
                    Map<String, dynamic> messageAction = jsonDecode(message);
                    print(messageAction);
                    if (messageAction['type'] == 'select') {
                      final item = data[messageAction['payload']];
                      if ("${item['name']}" == "H") {
                        getData2();
                      }
                      ;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

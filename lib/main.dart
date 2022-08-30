import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_echarts/flutter_echarts.dart';
// import 'package:number_display/number_display.dart';

// final display = createDisplay(decimal: 2);

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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Map<String, Object>> data = [];

  List<Map<String, Object>> links = [];

  getData1() async {
    const dataObj = [
      {
        "name": "H",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "455",
        "depth": "1"
      },
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
        "value": "758",
        "depth": "2"
      },
      {
        "name": "ExportHarvest",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "174",
        "depth": "1"
      },
      {
        "name": "StoreHarvest",
        "itemStyle": {
          "color": '#01B0F2',
        },
        "value": "129",
        "depth": "1"
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "614",
        "depth": "3"
      },
      {
        "name": "ExportEnjoy",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "15",
        "depth": "3"
      },
      {
        "name": "StoreEnjoy",
        "itemStyle": {
          "color": '#01B0F1',
        },
        "value": "129",
        "depth": "3"
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
        "value": "151",
        "depth": "1"
      },
      {
        "name": "HM2",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "151",
        "depth": "1"
      },
      {
        "name": "HM3",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "153",
        "depth": "1"
      },
      {
        "name": "MT",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "455",
        "depth": "2"
      },
      {
        "name": "H",
        "itemStyle": {
          "color": '#00B04F',
        },
        "value": "455",
        "depth": "3"
      },
      {
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "174",
        "depth": "3"
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
        },
        "value": "129",
        "depth": "3"
      },
      {
        "name": "Storage",
        "itemStyle": {
          "color": '#3F3F3F',
        },
        "value": "758",
        "depth": "4"
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
      data.addAll(dataObj);
      links.addAll(linksObj);
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
        "depth": "1"
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "614",
        "depth": "2"
      },
      {
        "name": "Aircon",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "325",
        "depth": "3"
      },
      {
        "name": "Utility",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "166",
        "depth": "3"
      },
      {
        "name": "Light",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "55.3",
        "depth": "3"
      },
      {
        "name": "Other",
        "itemStyle": {
          "color": '#FE0000',
        },
        "value": "67.5",
        "depth": "3"
      },
      {
        "name": "Store",
        "itemStyle": {
          "color": '#000000',
        },
        "value": "15",
        "depth": "2"
      },
      {
        "name": "Export",
        "itemStyle": {
          "color": '#01B0F1',
        },
        "value": "129",
        "depth": "2"
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

  void _landscapeModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void _enableRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void initState() {
    super.initState();
    _landscapeModeOnly();
    getData1();
  }

  void dispose() {
    _enableRotation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Sankey Diagram'),
        actions: [
          IconButton(
              onPressed: () {
                getData1();
              },
              icon: Icon(Icons.dangerous)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: Echarts(
                  option: '''
                     {
                      series: {
                          type: 'sankey',
                          left: -180.0,
                          top: 50.0,
                          right: 130.0,
                          bottom: 50.0,
                          draggable: false,
                          nodeGap: 30,
                          emphasis: {
                            focus: 'adjacency'
                          },
                        data:  ${jsonEncode(data)},
                        links: ${jsonEncode(links)},
                        label: {
                          position: "top",
                          overflow: "break",
                          show: true,
                          color: "#000000",
                          formatter: '{b}: {c}'
                        },
                        tooltip: {
                          trigger: 'item',
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
            ],
          ),
        ),
      ),
    );
  }
}

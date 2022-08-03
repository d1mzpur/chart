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
  List<Map<String, Object>> data = [
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
      "name": "MT1",
      "itemStyle": {
        "color": '#00B04F',
      },
    },
    {
      "name": "H1",
      "itemStyle": {
        "color": '#00B04F',
      },
    },
    {
      "name": "Storage",
      "itemStyle": {
        "color": '#3F3F3F',
      }
    },
    {
      "name": "ExportHarvest",
      "itemStyle": {
        "color": '#000000',
      }
    },
    {
      "name": "StoreHarvest",
      "itemStyle": {
        "color": '#01B0F2',
      }
    },
    {
      "name": "Enjoy",
      "itemStyle": {
        "color": '#FE0000',
      }
    },
    {
      "name": "Aircon",
      "itemStyle": {
        "color": '#FE0000',
      }
    },
    {
      "name": "Utility",
      "itemStyle": {
        "color": '#FE0000',
      }
    },
    {
      "name": "Light",
      "itemStyle": {
        "color": '#FE0000',
      }
    },
    {
      "name": "Other",
      "itemStyle": {
        "color": '#FE0000',
      }
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

  List<Map<String, Object>> links = [
    {
      "source": "HM1",
      "target": "MT1",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "HM2",
      "target": "MT1",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "HM3",
      "target": "MT1",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "MT1",
      "target": "H1",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "H1",
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
      "source": "Enjoy",
      "target": "Aircon",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "Enjoy",
      "target": "Utility",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "Enjoy",
      "target": "Light",
      "value": 1,
      "lineStyle": {
        "color": 'gradient',
      }
    },
    {
      "source": "Enjoy",
      "target": "Other",
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

  getData1() async {
    await Future.delayed(Duration(seconds: 4));

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
        }
      },
      {
        "name": "ExportHarvest",
        "itemStyle": {
          "color": '#000000',
        }
      },
      {
        "name": "StoreHarvest",
        "itemStyle": {
          "color": '#01B0F2',
        }
      },
      {
        "name": "Enjoy",
        "itemStyle": {
          "color": '#FE0000',
        }
      }
    ];

    this.setState(() {
      this.data = dataObj;
    });
  }

  getData2() async {
    await Future.delayed(Duration(seconds: 4));

    const dataObj = [
      {
        "source": "H",
        "target": "Storage",
        "value": 3,
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
      }
    ];

    this.setState(() {
      this.links = dataObj;
    });
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Echart'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView (
          child: Column(
            children: [
              Container(
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
                      data:  ${jsonEncode(data)},
                      links: ${jsonEncode(links)},
                      }
                    }
                      ''',
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              ElevatedButton(
                onPressed: () {
                  getData1();
                  getData2();
                },
                child: Text("Ganti Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

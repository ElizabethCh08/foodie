import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_diet2/model/weight.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';



class DetailScreen extends StatelessWidget{
  /*final Weight? peso;

  DetailScreen({
    Key? key, 
    required this.peso,
  })*/

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF35F34) ,
        title: Text('Tus datos',
        style: TextStyle(
          color: Color (0xFFFFFFFF),
        ),),
        actions: [
          Container(
            width: 70,
            child: Image.asset(
              'assets/logo1.png',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _createCard1(),
              SizedBox(height: 20,),
              _createCard2(),
              SizedBox(height: 20,),
              _createCard3(),
              SizedBox(height: 20,),
              _createCard4(),
              SizedBox(height: 20,),
              _createCard5(),
              SizedBox(height: 20,),
              _createCard6(),
              SizedBox(height: 20,),

            ]
          ),
        ),
      ),
    );
  }
}


class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double? sales;
}


Widget _createCard1(){


  final List<SalesData> charData = [
    /*SalesData('2021-09-13', 64),
    SalesData('2021-10-15', 54),
    SalesData('2021-11-17', 44),
    SalesData('2021-11-21', 34),*/
    SalesData('2021-09-11', 70),
    /*SalesData('May', null),
    SalesData('Jun', null),
    SalesData('Jul', null),
    SalesData('Ago', null),*/
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'PESO',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.all(1.0),
            child: new SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  labelRotation: 90,
                    labelStyle: TextStyle(
                        color: Color (0xFFF35F34),
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500
                    )
                ),
                primaryYAxis: CategoryAxis(
                  isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 44,
                          end: 44,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 34,
                          end: 34,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                ),
                series: <ChartSeries>[
                  LineSeries<SalesData, String>(
                      dataSource: charData,
                      color: Color(0xFFF35F34),
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                    emptyPointSettings: EmptyPointSettings(
                        mode: EmptyPointMode.drop
                    ),
                markerSettings: MarkerSettings(
                    borderColor: Color(0xFFF35F34),
                    isVisible: true,
                  width: 5,
                  height: 5,
                ),
                      dataLabelSettings: DataLabelSettings(
                        // Renders the data label
                          isVisible: true
                      )
                  ),
                ]
            )
          ),
        ],
      ),
    ),
  );
}

Widget _createCard2(){

  final List<SalesData> charData = [
    SalesData('Ene', 10),
    SalesData('Feb', 15),
    SalesData('Mar', 17),
    SalesData('Abr', 18),
    SalesData('May', null),
    SalesData('Jun', 15),
    SalesData('Jul', 24),
    SalesData('Ago', 9),
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'IMC',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: new SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      labelStyle: TextStyle(
                          color: Color (0xFFF35F34),
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 15,
                          end: 15,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 5,
                          end: 5,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                  ),
                  series: <ChartSeries>[
                    LineSeries<SalesData, String>(
                        dataSource: charData,
                        color: Color(0xFFF35F34),
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        emptyPointSettings: EmptyPointSettings(
                            mode: EmptyPointMode.average
                        ),
                        markerSettings: MarkerSettings(
                          borderColor: Color(0xFFF35F34),
                          isVisible: true,
                          width: 5,
                          height: 5,
                        ),
                        dataLabelSettings: DataLabelSettings(
                          // Renders the data label
                            isVisible: true
                        )
                    ),
                  ]
              )
          ),
        ],
      ),
    ),
  );
}
Widget _createCard3(){

  final List<SalesData> charData = [
    SalesData('Ene', 0),
    SalesData('Feb', 5),
    SalesData('Mar', 7),
    SalesData('Abr', 10),
    SalesData('May', 12),
    SalesData('Jun', null),
    SalesData('Jul', 24),
    SalesData('Ago', 9),
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'MASA MUSCULAR',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: new SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      labelStyle: TextStyle(
                          color: Color (0xFFF35F34),
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 15,
                          end: 15,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 5,
                          end: 5,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                  ),
                  series: <ChartSeries>[
                    LineSeries<SalesData, String>(
                        dataSource: charData,
                        color: Color(0xFFF35F34),
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        emptyPointSettings: EmptyPointSettings(
                            mode: EmptyPointMode.average
                        ),
                        markerSettings: MarkerSettings(
                          borderColor: Color(0xFFF35F34),
                          isVisible: true,
                          width: 5,
                          height: 5,
                        ),
                        dataLabelSettings: DataLabelSettings(
                          // Renders the data label
                            isVisible: true
                        )
                    ),
                  ]
              )
          ),
        ],
      ),
    ),
  );
}
Widget _createCard4(){

  final List<SalesData> charData = [
    SalesData('Ene', 0),
    SalesData('Feb', 5),
    SalesData('Mar', 7),
    SalesData('Abr', 10),
    SalesData('May', 12),
    SalesData('Jun', null),
    SalesData('Jul', 24),
    SalesData('Ago', 9),
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'GRASA CORPORAL',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: new SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      labelStyle: TextStyle(
                          color: Color (0xFFF35F34),
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 15,
                          end: 15,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 5,
                          end: 5,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                  ),
                  series: <ChartSeries>[
                    LineSeries<SalesData, String>(
                        dataSource: charData,
                        color: Color(0xFFF35F34),
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        emptyPointSettings: EmptyPointSettings(
                            mode: EmptyPointMode.average
                        ),
                        markerSettings: MarkerSettings(
                          borderColor: Color(0xFFF35F34),
                          isVisible: true,
                          width: 5,
                          height: 5,
                        ),
                        dataLabelSettings: DataLabelSettings(
                          // Renders the data label
                            isVisible: true
                        )
                    ),
                  ]
              )
          ),
        ],
      ),
    ),
  );
}
Widget _createCard5(){

  final List<SalesData> charData = [
    SalesData('Ene', 0),
    SalesData('Feb', 5),
    SalesData('Mar', 7),
    SalesData('Abr', 10),
    SalesData('May', 12),
    SalesData('Jun', null),
    SalesData('Jul', 24),
    SalesData('Ago', 9),
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'GRASA VISCERAL',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: new SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      labelStyle: TextStyle(
                          color: Color (0xFFF35F34),
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 15,
                          end: 15,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 5,
                          end: 5,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                  ),
                  series: <ChartSeries>[
                    LineSeries<SalesData, String>(
                        dataSource: charData,
                        color: Color(0xFFF35F34),
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        emptyPointSettings: EmptyPointSettings(
                            mode: EmptyPointMode.average
                        ),
                        markerSettings: MarkerSettings(
                          borderColor: Color(0xFFF35F34),
                          isVisible: true,
                          width: 5,
                          height: 5,
                        ),
                        dataLabelSettings: DataLabelSettings(
                          // Renders the data label
                            isVisible: true
                        )
                    ),
                  ]
              )
          ),
        ],
      ),
    ),
  );
}

Widget _createCard6(){
  final List<SalesData> charData = [
    SalesData('Ene', 0),
    SalesData('Feb', 5),
    SalesData('Mar', 7),
    SalesData('Abr', 10),
    SalesData('May', 12),
    SalesData('Jun', null),
    SalesData('Jul', 24),
    SalesData('Ago', 9),
  ];

  final LinearGradient gradientColors =
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFF15156),
      Color(0xFFF9A03F),
    ],
  );


  return Card(
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'CIRCUNFERENCIA ABDOMINAL',
            style: const TextStyle(
                color: Color (0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: new SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      labelStyle: TextStyle(
                          color: Color (0xFFF35F34),
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  primaryYAxis: CategoryAxis(
                    isVisible: false,
                    plotBands: <PlotBand>[
                      PlotBand(
                          start: 15,
                          end: 15,
                          borderColor: Colors.red,
                          borderWidth: 2
                      ),
                      PlotBand(
                          start: 5,
                          end: 5,
                          borderColor: Colors.green,
                          borderWidth: 2
                      ),
                    ],
                  ),
                  series: <ChartSeries>[
                    LineSeries<SalesData, String>(
                        dataSource: charData,
                        color: Color(0xFFF35F34),
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        emptyPointSettings: EmptyPointSettings(
                            mode: EmptyPointMode.average
                        ),
                        markerSettings: MarkerSettings(
                          borderColor: Color(0xFFF35F34),
                          isVisible: true,
                          width: 5,
                          height: 5,
                        ),
                        dataLabelSettings: DataLabelSettings(
                          // Renders the data label
                            isVisible: true
                        )
                    ),
                  ]
              )
          ),
        ],
      ),
    ),
  );
}
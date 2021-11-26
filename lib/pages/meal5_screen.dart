import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:intl/intl.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'equivalences_screen.dart';

class MealScreen5 extends StatelessWidget {
  String? dairy;
  String? cereal;
  String? protein;
  String? fat;
  String? vegetables;
  String? fruit;
  String? example;

  MealScreen5(
      {Key? key,
      required this.dairy,
      required this.cereal,
      required this.protein,
      required this.fat,
      required this.vegetables,
      required this.fruit,
      required this.example})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dairyDouble = double.parse('$dairy')== null ? 0.0 : double.parse('$dairy');
    var cerealDouble = double.parse('$cereal')== null ? 0.0 : double.parse('$cereal');
    var proteinDouble = double.parse('$protein')== null ? 0.0 : double.parse('$protein');
    var fatDouble = double.parse('$fat')== null ? 0.0 : double.parse('$fat');
    var vegetablesDouble = double.parse('$vegetables')== null ? 0.0 : double.parse('$vegetables');
    var fruitDouble = double.parse('$fruit')== null ? 0.0 : double.parse('$fruit');
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm').format(now);
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF35F34),
        centerTitle: true,
        title: Text(
          'Cena',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
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
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                child: Image.asset(
                  'assets/bgBreakfast.jpg',
                  height: height * 0.25,
                  width: widht,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      formattedDate,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 34.0),
                    ),
                  ),
                  Container(
                    child: Text('Alarma'),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Alarma'),
                      onPressed: () {},
                      /*child: ElevatedButton(
                        onPressed: () => NotificationApi.showNotification(
                          title: 'Foddie Alarm',
                          body: 'Activaste la alrma',
                          payload: 'alarma.com'
                        ), child: Text('Alarma'),
                      )*/
                      /*LiteRollingSwitch(
                        value: false,
                        textOn: "Encendida",
                        textOff: "Apagada",
                        colorOn: Color(0xFF00A676),
                        colorOff: Color(0xFFF9A03F),
                        iconOn: Icons.alarm_on_outlined,
                        iconOff: Icons.alarm_off_outlined,
                        textSize: 14,
                        onTap: (bool position) {
                          print("The button is $position");
                        },
                        /*onTap: () => NotificationApi.showNotification(
                          title: 'Alarma foddie',
                          body: 'Activaste tu alarma desayuno',
                          payload: 'No se que es esto...',
                        ),*/
                      ),*/
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'PORCIONES',
                        style: const TextStyle(
                            color: Color(0xFF093824),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SfCartesianChart(
                        primaryXAxis: CategoryAxis(
                          labelStyle: TextStyle(
                              color: Color(0xFFF35F34),
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500),
                        ),
                        primaryYAxis: NumericAxis(
                          labelStyle: TextStyle(
                              color: Color(0xFF093824),
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500),
                        ),
                        series: <ChartSeries>[
                          LineSeries<SalesData, String>(
                              color: Color(0xFFF35F34),
                              dataSource: [
                                SalesData('Lácteos', dairyDouble),
                                SalesData('Cereal', cerealDouble),
                                SalesData('Proteína', proteinDouble),
                                SalesData('Grasa', fatDouble),
                                SalesData('Vegetales', vegetablesDouble),
                                SalesData('Fruta', fruitDouble),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EquivalencesScreen()),
                  );
                },
                child: Text(
                  'Tabla de equivalencias',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  primary: Color(0xFFF35F34),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  side: BorderSide(
                    color: Color(0xFFF15156),
                    width: 1.5,
                  ),
                  minimumSize: Size(150.0, 30.0),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                shadowColor: Color(0xFFF9A03F),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.emoji_food_beverage_rounded,
                          size: 30, color: Color(0xFFF9A03F)),
                      title: Text(
                        'Ejemplo',
                        style: TextStyle(
                            color: Color(0xFF093824),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        '$example',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.8,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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

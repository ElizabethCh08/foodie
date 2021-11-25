import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'details_screen.dart';
import 'package:intl/intl.dart';

class NutritionalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF35F34) ,
        centerTitle: true,
        title: Text('Indicaciones generales',
          style: TextStyle(
            color: Color (0xFFFFFFFF),
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: const Radius.circular(40),
                ),
                child: Container(
                  child: Image.asset(
                    'assets/bgNutritional.png',
                    height: height *0.3,
                    width: widht,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                shadowColor: Color (0xFFF9A03F),
                elevation: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                          Icons.assistant_outlined,
                          size: 30,
                          color: Color (0xFFF9A03F)
                      ),
                      title: Text(
                          'Recomendaciones',
                        style: TextStyle(
                          color: Color (0xFF093824),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                          'Masticar 20 veces cada bocado. \n',
                              //'Cambiar azúcar blanca por edulcorante tipo dulce gota'
                              //' (1 gota equivale a una cdta de azúcar blanca). \n'
                              //'Tomar 2 lts diarios de agua. \n',
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Color (0xFFF9A03F),
                elevation: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                          Icons.star_outline_outlined,
                          size: 30,
                          color: Color (0xFFF9A03F)
                      ),
                      title: Text(
                          'Suplementos',
                        style: TextStyle(
                            color: Color (0xFF093824),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'Ensure Protein: 2 cdts diarias espolvoreadas o en bebida. \n',
                            //'Cambiar azúcar blanca por edulcorante tipo dulce gota'
                            //' (1 gota equivale a una cdta de azúcar blanca). \n'
                            //'Tomar 2 lts diarios de agua. \n',
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
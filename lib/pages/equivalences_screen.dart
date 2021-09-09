import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'details_screen.dart';
import 'package:intl/intl.dart';

class EquivalencesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF35F34) ,
        centerTitle: true,
        title: Text('Equivalencias',
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
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'assets/productos-lacteos.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Lácteos',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
              '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.8,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/cereal.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Cereal',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
                  '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.8,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/carne.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Proteína',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
                  '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.8,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/aceite.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Grasa',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
                  '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.8,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/vegetable.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Vegetales',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
                  '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.8,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/fruta.png',
              width: 30,
              height: 30,
              color: Color (0xFFF9A03F),
            ),
            title: Text('Fruta',
                style: TextStyle(
                    color: Color (0xFF093824),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              '1/2 taza de arroz, fideo \n'
                  '1/2 taza de pure de papa, 1 papa mediana\n'
                  '1/2 pan, 2 tostadas, 1 rebanada de pan  \n'
                  '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n',
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
    );
  }
  
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'details_screen.dart';
import 'package:intl/intl.dart';

class EquivalencesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> lacteos =['1 taza de leche o yogurt', '2 cucharadas de leche en polvo' ];

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
            padding: EdgeInsets.only(left: 0, right: 45),
            child: Container(
              child: Text(
                '1 taza de leche o yogurt \n'
                    '2 cucharadas de leche en polvo \n',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
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
            padding: EdgeInsets.only(left: 40, right: 5),
            child: Container(
              child: Container(
                child: Text(
                '1/2 taza de arroz, fideo \n'
                    '1/2 taza de pure de papa, 1 papa mediana \n'
                    '1/2 pan, 2 tostadas, 1 rebanada de pan \n'
                    '1/2 maduro, 1/2 yuca, 1/2 zanahoria amarilla \n'
                    '6 galletas pequeñas, 2 galletas grandes \n',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
                ),
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
            padding: EdgeInsets.only(left: 72, right: 15),
            child: Container(
              child: Text(
                '1 onza de pollo, 1 onza de carne o 1 onza de pescado \n'
                    '1 pedazo de queso (del tamaño de una caja de fósforos) \n'
                    '1/2 taza de atún \n'
                    '1 huevo de pollo \n'
                    '1 rodaja de jamon \n'
                    '5 conchas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
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
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Container(
              child: Text(
                '1 cdta de aceite o 1 cdta de mayonesa \n'
                    '1/8 de aguacate \n'
                    '1/4 taza de semillas \n'
                    '10 aceitunas \n'
                    '1 cdta de margarina \n'
                    '1 lonja de tocino \n'
                    '1 cdta de aceite de oliva \n',
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
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
            padding: EdgeInsets.only(left: 0, right: 45),
            child: Container(
              child: Text(
                '1/2 taza de verduras cocidas \n'
                    '1 taza de verduras crudas \n',
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
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
            padding: EdgeInsets.only(left: 0, right: 100),
            child: Container(
              child: Text(
                '1 fruta fresca mediana \n'
                    '1 taza de fruta picada \n'
                    '1 de jugo diluido \n'
                    '1/2 vaso de jugo puro \n',
                style: TextStyle(
                  height: 1.8,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
  
}
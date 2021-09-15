import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet2/api/user_sheets_api.dart';
import 'package:flutter_diet2/model/bodyfat.dart';
import 'package:flutter_diet2/model/imc.dart';
import 'package:flutter_diet2/model/mass.dart';
import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/model/visceralfat.dart';
import 'package:flutter_diet2/model/waist.dart';
import 'package:flutter_diet2/model/weight.dart';
import 'details_screen.dart';
import 'package:intl/intl.dart';
import 'meal_screen.dart';
import 'nutritional_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:group_button/group_button.dart';



class HomeScreensw extends StatelessWidget {
  final User? user;
  final Weight? peso;
  final Waist? cintura;
  final Mass? masa;
  final Bodyfat? grasaCorporal;
  final Visceralfat? grasaVisceral;
  final Imc? imc;
      

  HomeScreensw({
    Key? key, 
    required this.user, 
    required this.peso, 
    required this.cintura, 
    required this.masa,
    required this.grasaCorporal,
    required this.grasaVisceral,
    required this.imc,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    final today = DateTime.now();
    final name = user == null ? '' : user!.name;
    final weight = peso == null ? '' : peso!.value;
    final waist = cintura == null ? '' : cintura!.value;
    final mass = masa == null ? '' : masa!.value;
    final bFat = grasaCorporal == null ? '' : grasaCorporal!.value;
    final vFat = grasaVisceral == null ? '' : grasaVisceral!.value;
    final bmi = imc == null ? '' : imc!.value;
    

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          iconSize: 30,
          selectedIconTheme: IconThemeData(
            color: Color(0xFFF9A03F),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              title: Text(
                "Inicio",
                style: const TextStyle(color: Color(0xFFF9A03F)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.search),
              ),
              title: Text(
                "Buscar",
                style: const TextStyle(color: Color(0xFFF9A03F)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.person),
              ),
              title: Text(
                "Perfil",
                style: const TextStyle(color: Color(0xFFF9A03F)),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.4,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Color(0xFFFFFFFF),
                padding: const EdgeInsets.only(
                    top: 50, left: 16,  bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRect(
                      child: Image.asset(
                        'assets/logo1.png',
                        height: 30,
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Martes, 14 Septiembre",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        'Hola $name',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 26,
                          color: Color(0xFF093824),
                        ),
                      ),
                      trailing: ClipOval(child: Image.asset('assets/user.jpg')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            _Progress(
                              ingredient: "Peso",
                              leftAmount: '$weight kg',
                              progress: 0.5,
                              progressColor: Color(0xFFFD3000),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "M. muscular",
                              leftAmount: '$mass %',
                              progress: 0.2,
                              progressColor: Color(0xFF5FD000),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "IMC",
                              leftAmount: '$bmi',
                              progress: 0.4,
                              progressColor: Color(0xFFFDE400),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            _Progress(
                              ingredient: "Grasa c.",
                              leftAmount: '$bFat %',
                              progress: 0.1,
                              progressColor: Color(0xFFFD3000),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "Abdomen",
                              leftAmount: '$waist cm',
                              progress: 0.6,
                              progressColor: Color(0xFFFD3000),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "Grasa v.",
                              leftAmount: '$vFat',
                              progress: 0.8,
                              progressColor: Color(0xFF5FD000),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()),
                        );
                      },
                      child: Text(
                        'Ver detalle',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Color(0xFFF35F34),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0),
                        ),
                        side: BorderSide(
                          color: Color(0xFFF15156),
                          width: 1.5,
                        ),
                        minimumSize: Size(150.0, 10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.42,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 4,
                      left: 32,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: _conditional(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(bottom: 0, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFFF15156),
                            const Color(0xFFF9A03F),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text("PLAN NUTRICIONAL",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              color: const Color(0xFFF35F34),
                                            ),
                                            padding: const EdgeInsets.all(3),
                                            child: IconButton(
                                              icon: Image.asset(
                                                'assets/list.png',
                                                width: 27,
                                                height: 37,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          NutritionalScreen()),
                                                );
                                              },
                                            ),
                                          ),
                                          Text(
                                            "Indicaciones",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              color: const Color(0xFFF35F34),
                                            ),
                                            padding: const EdgeInsets.all(3),
                                            child: IconButton(
                                              icon: Image.asset(
                                                'assets/breakfast.png',
                                                width: 27,
                                                height: 37,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          MealScreen()),
                                                );
                                              },
                                            ),
                                          ),
                                          Text(
                                            "Desayuno",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              color: const Color(0xFFF35F34),
                                            ),
                                            padding: const EdgeInsets.all(3),
                                            child: IconButton(
                                              icon: Image.asset(
                                                'assets/vegetable.png',
                                                width: 27,
                                                height: 37,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          NutritionalScreen()),
                                                );
                                              },
                                            ),
                                          ),
                                          Text(
                                            "M. mañana",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: const Color(0xFFF35F34),
                                          ),
                                          padding: const EdgeInsets.all(3),
                                          child: IconButton(
                                            icon: Image.asset(
                                              'assets/lunch.png',
                                              width: 27,
                                              height: 37,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NutritionalScreen()),
                                              );
                                            },
                                          ),
                                        ),
                                        Text(
                                          "Almuerzo",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: const Color(0xFFF35F34),
                                          ),
                                          padding: const EdgeInsets.all(3),
                                          child: IconButton(
                                            icon: Image.asset(
                                              'assets/salad.png',
                                              width: 27,
                                              height: 37,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NutritionalScreen()),
                                              );
                                            },
                                          ),
                                        ),
                                        Text(
                                          "M. tarde",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: const Color(0xFFF35F34),
                                          ),
                                          padding: const EdgeInsets.all(3),
                                          child: IconButton(
                                            icon: Image.asset(
                                              'assets/dinner.png',
                                              width: 27,
                                              height: 37,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NutritionalScreen()),
                                              );
                                            },
                                          ),
                                        ),
                                        Text(
                                          "Cena",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  final String ingredient;
  final String leftAmount;
  final double progress, width;
  final Color progressColor;

  const _Progress(
      {Key? key,
      required this.ingredient,
      required this.leftAmount,
      required this.progress,
      required this.width,
      required this.progressColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text("$leftAmount"),
          ],
        ),
      ],
    );
  }
}

class _Choose extends StatelessWidget {
  _showModal(context) {
    showModalBottomSheet(
        backgroundColor: Color(0xFFF5F5F5),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'SNACK DE LA MAÑANA',
                            style: TextStyle(
                              color: Color(0xFFF35F34),
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          GroupButton(
                            isRadio: true,
                            spacing: 10,
                            selectedColor: Color(0xFFF9A03F),
                            unselectedColor: Colors.white,
                            onSelected: (index, isSelected) =>
                                print('$index button is selected'),
                            buttons: ["Opción 1", "Opción 2"],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            buttonHeight: 200,
                            buttonWidth: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'ALMUERZO',
                            style: TextStyle(
                              color: Color(0xFFF35F34),
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          GroupButton(
                            isRadio: true,
                            spacing: 10,
                            selectedColor: Color(0xFFF9A03F),
                            unselectedColor: Colors.white,
                            onSelected: (index, isSelected) =>
                                print('$index button is selected'),
                            buttons: ["Opción 1", "Opción 2"],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            buttonHeight: 200,
                            buttonWidth: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'SNACK DE LA TARDE',
                            style: TextStyle(
                              color: Color(0xFFF35F34),
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          GroupButton(
                            isRadio: true,
                            spacing: 10,
                            selectedColor: Color(0xFFF9A03F),
                            unselectedColor: Colors.white,
                            onSelected: (index, isSelected) =>
                                print('$index button is selected'),
                            buttons: ["Opción 1", "Opción 2"],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            buttonHeight: 200,
                            buttonWidth: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Guardar',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Color(0xFFF35F34),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                          side: BorderSide(
                            color: Color(0xFFF15156),
                            width: 1.5,
                          ),
                          minimumSize: Size(150.0, 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 0, left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFF9A03F),
                  const Color(0xFFF15156),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'ELIGE TU MENÚ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _showModal(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF35F34),
                        ),
                        child: Text(
                          'L',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF35F34),
                        ),
                        child: Text(
                          'M',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF35F34),
                        ),
                        child: Text(
                          'M',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF35F34),
                        ),
                        child: Text(
                          'J',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF35F34),
                        ),
                        child: Text(
                          'V',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Enviar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Color(0xFFF35F34),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    side: BorderSide(
                      color: Color(0xFFF15156),
                      width: 1.5,
                    ),
                    minimumSize: Size(150.0, 10.0),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget _conditional() {
  String day = DateFormat('EEEE').format(DateTime.now());
  print(day);

  String day2 = 'Saturday';

  if (day != 'Saturday') {
    return _Menu();
  } else {
    return _Choose();
  }
}

class _Menu extends StatelessWidget {
  double _currentSliderValue = 20;

  _showModal(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFF15156),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/fruta.png',
                    ),
                    title: Text(
                      'Snack de la mañana',
                      style: TextStyle(
                          color: Color(0xFF093824),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: Text(
                    'If there is an opaque graphic, e.g. painted using a Container, Image, or DecoratedBox'
                    'If there is an opaque graphic, e.g. painted using a Container, Image, or DecoratedBox \n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        height: 1.8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: Text(
                    'Califica tu menú: \n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        height: 1.8),
                  ),
                ),
                RatingBar.builder(
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFFF9A03F),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Enviar',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Color(0xFFF35F34),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    side: BorderSide(
                      color: Color(0xFFF15156),
                      width: 1.5,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "MENÚ DEL DÍA",
            style: const TextStyle(
                color: Color(0xFF093824),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFFF9A03F),
                    const Color(0xFFF15156),
                  ],
                ),
              ),
              child: InkWell(
                onTap: () {
                  _showModal(context);
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/bgSnack1.jpg',
                      height: 80,
                      width: 80,
                    ),
                    Text(
                      'Snack mañana',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFFF9A03F),
                    const Color(0xFFF15156),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/bgLunch.jpg',
                    height: 80,
                    width: 80,
                  ),
                  Text(
                    'Almuerzo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFFF9A03F),
                    const Color(0xFFF15156),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/bgSnack2.jpg',
                    height: 80,
                    width: 80,
                  ),
                  Text(
                    'Snack tarde',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

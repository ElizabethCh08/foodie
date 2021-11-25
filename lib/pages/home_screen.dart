import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet2/api/user_sheets_api.dart';
import 'package:flutter_diet2/model/afternoonSValues.dart';
import 'package:flutter_diet2/model/bodyfat.dart';
import 'package:flutter_diet2/model/breakfastValues.dart';
import 'package:flutter_diet2/model/dinnerValues.dart';
import 'package:flutter_diet2/model/imc.dart';
import 'package:flutter_diet2/model/lunchValues.dart';
import 'package:flutter_diet2/model/mass.dart';
import 'package:flutter_diet2/model/menu.dart';
import 'package:flutter_diet2/model/morningSValues.dart';
import 'package:flutter_diet2/model/orders.dart';
import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/model/visceralfat.dart';
import 'package:flutter_diet2/model/waist.dart';
import 'package:flutter_diet2/model/weight.dart';
import 'package:flutter_diet2/pages/meal2_screen.dart';
import 'details_screen.dart';
import 'package:intl/intl.dart';
import 'meal1_screen.dart';
import 'meal3_screen.dart';
import 'meal4_screen.dart';
import 'meal5_screen.dart';
import 'nutritional_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreenTwo extends StatefulWidget{
  @override
  State<HomeScreenTwo> createState(){
    return StateHome();
  }
}

class StateHome extends State<HomeScreenTwo>{
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
  
  }


class HomeScreensw extends StatelessWidget {
  final User? user;
  final Weight? peso;
  final Waist? cintura;
  final Mass? masa;
  final Bodyfat? grasaCorporal;
  final Visceralfat? grasaVisceral;
  final Imc? imc;
  final Breakfast? breakfast;
  final MorningS? morningSnack;
  final Lunch? lunch;
  final AfternoonS? afternoonSnack;
  final Dinner? dinner;
  final Menu? morningMenu;
  final Menu? lunchMenu;
  final Menu? nightMenu;

  HomeScreensw({
    Key? key,
    required this.user,
    required this.peso,
    required this.cintura,
    required this.masa,
    required this.grasaCorporal,
    required this.grasaVisceral,
    required this.imc,
    required this.breakfast,
    required this.morningSnack,
    required this.lunch,
    required this.afternoonSnack,
    required this.dinner,
    required this.morningMenu,
    required this.lunchMenu,
    required this.nightMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    final today = DateTime.now();
    final email = user == null ? '' : user!.email;
    final name = user == null ? '' : user!.name;
    //Weight
    final weight = peso == null ? '' : peso!.value;
    final lowerRangeWeight = peso == null ? '' : peso!.lowerRange;
    final topRangeWeight = peso == null ? '' : peso!.topRange;
    //Waist
    final waist = cintura == null ? '' : cintura!.value;
    final lowerRangeWaist = cintura == null ? '' : cintura!.lowerRange;
    final topRangeWaist = cintura == null ? '' : cintura!.topRange;
    //Mass
    final mass = masa == null ? '' : masa!.value;
    final lowerRangeMass = masa == null ? '' : masa!.lowerRange;
    final topRangeMass = masa == null ? '' : masa!.topRange;
    //Body fat
    final bFat = grasaCorporal == null ? '' : grasaCorporal!.value;
    final lowerRangeBfat =
        grasaCorporal == null ? '' : grasaCorporal!.lowerRange;
    final topRangeBfat = grasaCorporal == null ? '' : grasaCorporal!.topRange;
    //Visceral fat
    final vFat = grasaVisceral == null ? '' : grasaVisceral!.value;
    final lowerRangevfat =
        grasaVisceral == null ? '' : grasaVisceral!.lowerRange;
    final topRangevfat = grasaVisceral == null ? '' : grasaVisceral!.topRange;
    //IMC
    final bmi = imc == null ? '' : imc!.value;
    final lowerRangeBmi = imc == null ? '' : imc!.lowerRange;
    final topRangeBmi = imc == null ? '' : imc!.topRange;

    //BREAKFAST VALUES
    final dairy = breakfast == null ? '' : breakfast!.dairy;
    final cereal = breakfast == null ? '' : breakfast!.cereal;
    final protein = breakfast == null ? '' : breakfast!.protein;
    final fat = breakfast == null ? '' : breakfast!.fat;
    final vegetables = breakfast == null ? '' : breakfast!.vegetables;
    final fruit = breakfast == null ? '' : breakfast!.fruit;
    final example = breakfast == null ? '' : breakfast!.example;

    //MORNING SNACK VALUES
    final dairyMS = morningSnack == null ? '' : morningSnack!.dairy;
    final cerealMS = morningSnack == null ? '' : morningSnack!.cereal;
    final proteinMS = morningSnack == null ? '' : morningSnack!.protein;
    final fatMS = morningSnack == null ? '' : morningSnack!.fat;
    final vegetablesMS = morningSnack == null ? '' : morningSnack!.vegetables;
    final fruitMS = morningSnack == null ? '' : morningSnack!.fruit;
    final exampleMS = morningSnack == null ? '' : morningSnack!.example;

    //LUNCH VALUES
    final dairyL = lunch == null ? '' : lunch!.dairy;
    final cerealL = lunch == null ? '' : lunch!.cereal;
    final proteinL = lunch == null ? '' : lunch!.protein;
    final fatL = lunch == null ? '' : lunch!.fat;
    final vegetablesL = lunch == null ? '' : lunch!.vegetables;
    final fruitL = lunch == null ? '' : lunch!.fruit;
    final exampleL = lunch == null ? '' : lunch!.example;

    //AFTERNOON SNACK VALUES
    final dairyAS = afternoonSnack == null ? '' : afternoonSnack!.dairy;
    final cerealAS = afternoonSnack == null ? '' : afternoonSnack!.cereal;
    final proteinAS = afternoonSnack == null ? '' : afternoonSnack!.protein;
    final fatAS = afternoonSnack == null ? '' : afternoonSnack!.fat;
    final vegetablesAS =
        afternoonSnack == null ? '' : afternoonSnack!.vegetables;
    final fruitAS = afternoonSnack == null ? '' : afternoonSnack!.fruit;
    final exampleAS = afternoonSnack == null ? '' : afternoonSnack!.example;

    //DINNER
    final dairyD = dinner == null ? '' : dinner!.dairy;
    final cerealD = dinner == null ? '' : dinner!.cereal;
    final proteinD = dinner == null ? '' : dinner!.protein;
    final fatD = dinner == null ? '' : dinner!.fat;
    final vegetablesD = dinner == null ? '' : dinner!.vegetables;
    final fruitD = dinner == null ? '' : dinner!.fruit;
    final exampleD = dinner == null ? '' : dinner!.example;

    //Morning Snack Menu
    final date = morningMenu == null ? '' : morningMenu!.date;
    final MSmonday = morningMenu == null ? '' : morningMenu!.monday;
    final MStuesday = morningMenu == null ? '' : morningMenu!.tuesday;
    final MSwednesay = morningMenu == null ? '' : morningMenu!.wednesday;
    final MSthursday = morningMenu == null ? '' : morningMenu!.thursday;
    final MSfriday = morningMenu == null ? '' : morningMenu!.friday;
    final MSmonday2 = morningMenu == null ? '' : morningMenu!.monday2;
    final MStuesday2 = morningMenu == null ? '' : morningMenu!.tuesday2;
    final MSwednesay2 = morningMenu == null ? '' : morningMenu!.wednesday2;
    final MSthursday2 = morningMenu == null ? '' : morningMenu!.thursday2;
    final MSfriday2 = morningMenu == null ? '' : morningMenu!.friday2;

    //Lunch Menu
    final Lmonday = lunchMenu == null ? '' : lunchMenu!.monday;
    final Ltuesday = lunchMenu == null ? '' : lunchMenu!.tuesday;
    final Lwednesay = lunchMenu == null ? '' : lunchMenu!.wednesday;
    final Lthursday = lunchMenu == null ? '' : lunchMenu!.thursday;
    final Lfriday = lunchMenu == null ? '' : lunchMenu!.friday;
    final Lmonday2 = lunchMenu == null ? '' : lunchMenu!.monday2;
    final Ltuesday2 = lunchMenu == null ? '' : lunchMenu!.tuesday2;
    final Lwednesay2 = lunchMenu == null ? '' : lunchMenu!.wednesday2;
    final Lthursday2 = lunchMenu == null ? '' : lunchMenu!.thursday2;
    final Lfriday2 = lunchMenu == null ? '' : lunchMenu!.friday2;

    //Afternoon Snack Menu
    final ASmonday = nightMenu == null ? '' : nightMenu!.monday;
    final AStuesday = nightMenu == null ? '' : nightMenu!.tuesday;
    final ASwednesay = nightMenu == null ? '' : nightMenu!.wednesday;
    final ASthursday = nightMenu == null ? '' : nightMenu!.thursday;
    final ASfriday = nightMenu == null ? '' : nightMenu!.friday;
    final ASmonday2 = nightMenu == null ? '' : nightMenu!.monday2;
    final AStuesday2 = nightMenu == null ? '' : nightMenu!.tuesday2;
    final ASwednesay2 = nightMenu == null ? '' : nightMenu!.wednesday2;
    final ASthursday2 = nightMenu == null ? '' : nightMenu!.thursday2;
    final ASfriday2 = nightMenu == null ? '' : nightMenu!.friday2;

    //Selected Menu
    String snackMLselected = '';
    String lunchLselected = '';
    String snackTLselected = '';

    String snackMMselected = '';
    String lunchMselected = '';
    String snackTMselected = '';

    String snackMMiselected = '';
    String lunchMiselected = '';
    String snackTMiselected = '';

    String snackMJselected = '';
    String lunchJselected = '';
    String snackTJselected = '';

    String snackMVselected = '';
    String lunchVselected = '';
    String snackTVselected = '';

    progressColorWeight() {
      weight as int;
      lowerRangeWeight as int;
      topRangeWeight as int;
      double amarilloLower = lowerRangeWeight - lowerRangeWeight * 0.10;
      double amarilloTop = topRangeWeight + topRangeWeight * 0.10;

      if (weight >= lowerRangeWeight && weight <= topRangeWeight) {
        return Color(0xFF5FD000);
      } else if (weight > amarilloLower && weight < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    progressColorWaist() {
      waist as int;
      lowerRangeWaist as int;
      topRangeWaist as int;
      double amarilloLower = lowerRangeWaist - lowerRangeWaist * 0.10;
      double amarilloTop = topRangeWaist + topRangeWaist * 0.10;

      if (waist >= lowerRangeWaist && waist <= topRangeWaist) {
        return Color(0xFF5FD000);
      } else if (waist > amarilloLower && waist < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    progressColorMass() {
      mass as int;
      lowerRangeMass as int;
      topRangeMass as int;
      double amarilloLower = lowerRangeMass - lowerRangeMass * 0.10;
      double amarilloTop = topRangeMass + topRangeMass * 0.10;

      if (mass >= lowerRangeMass && mass <= topRangeMass) {
        return Color(0xFF5FD000);
      } else if (mass > amarilloLower && mass < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    progressColorBfat() {
      bFat as int;
      lowerRangeBfat as int;
      topRangeBfat as int;
      double amarilloLower = lowerRangeBfat - lowerRangeBfat * 0.10;
      double amarilloTop = topRangeBfat + topRangeBfat * 0.10;

      if (bFat >= lowerRangeBfat && bFat <= topRangeBfat) {
        return Color(0xFF5FD000);
      } else if (bFat > amarilloLower && bFat < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    progressColorVfat() {
      vFat as int; //21
      lowerRangevfat as int; //20
      topRangevfat as int; //25
      double amarilloLower = lowerRangevfat - lowerRangevfat * 0.10; //18
      double amarilloTop = topRangevfat + topRangevfat * 0.10; //27.5

      if (vFat >= lowerRangevfat && vFat <= topRangevfat) {
        return Color(0xFF5FD000);
      } else if (vFat > amarilloLower && vFat < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    progressColorBmi() {
      bmi as int;
      lowerRangeBmi as int;
      topRangeBmi as int;
      double amarilloLower = lowerRangeBmi - lowerRangeBmi * 0.10;
      double amarilloTop = topRangeBmi + topRangeBmi * 0.10;

      if (bmi >= lowerRangeBmi && bmi <= topRangeBmi) {
        return Color(0xFF5FD000);
      } else if (bmi > amarilloLower && bmi < amarilloTop) {
        return Color(0xFFFDE400);
      } else {
        return Color(0xFFFD3000);
      }
    }

    //Weight
    int weightInt = weight as int;
    print(weightInt);
    double progressWeight = (weightInt - 30) / 120;

    //Waist
    int waistInt = waist as int;
    double progressWaist = (waistInt - 50) / 150;

    //BMI
    int bmiInt = bmi as int;
    double progressBmi = (bmiInt - 14) / 26;

    //BodyFat
    int bfatInt = bFat as int;
    double progressBfat = (bfatInt - 20) / 30;

    //VisceralFat
    int vfatInt = vFat as int;
    double progressVfat = 0.5;

    //Mass
    int massInt = mass as int;
    double progressMass = (massInt - 20) / 30;

    //Button
    bool isButtonActivate = true;


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
                padding: const EdgeInsets.only(top: 50, left: 12, bottom: 0),
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
                        '${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}',
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
                              progress: progressWeight,
                              progressColor: progressColorWeight(),
                              width: widht * 0.3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "M. muscular",
                              leftAmount: '$mass %',
                              progress: progressMass,
                              progressColor: progressColorMass(),
                              width: widht * 0.3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "Grasa v.",
                              leftAmount: '$vFat      ',
                              progress: progressVfat,
                              progressColor: progressColorVfat(),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            _Progress(
                              ingredient: "IMC",
                              leftAmount: '$bmi     ',
                              progress: progressBmi,
                              progressColor: progressColorBmi(),
                              width: widht * 0.3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "Grasa c.",
                              leftAmount: '$bFat %',
                              progress: progressBfat,
                              progressColor: progressColorBfat(),
                              width: widht * 0.30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _Progress(
                              ingredient: "Abdomen",
                              leftAmount: '$waist cm',
                              progress: progressWaist,
                              progressColor: progressColorWaist(),
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
                      //child: _conditional(),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  bottom: 0, left: 5, right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
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
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 135.0),
                                          child: Text(
                                            'ELIGE TU MENÚ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.info_outline,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          onPressed: () {
                                            _showDialog(context);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, bottom: 10.0, left: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: isButtonActivate ? () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Color(0xFFF5F5F5),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 40.0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () async {
                                                                      snackMLselected =
                                                                          'N/A';
                                                                      lunchLselected =
                                                                          'N/A';
                                                                      snackTLselected =
                                                                          'N/A';

                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                      'Este día no comeré.',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          5,
                                                                      primary:
                                                                          Color(
                                                                              0xFFF35F34),
                                                                      shape:
                                                                          new RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            new BorderRadius.circular(50.0),
                                                                      ),
                                                                      side:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFF15156),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                      minimumSize: Size(
                                                                          150.0,
                                                                          30.0),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'SNACK DE LA MAÑANA',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (MSmonday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones\n'
                                                                            ':(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$MSmonday',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMLselected =
                                                                                MSmonday as String;
                                                                          },
                                                                        ),
                                                                      if (MSmonday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones. :(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$MSmonday2',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMLselected =
                                                                                MSmonday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'ALMUERZO',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (Lmonday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones\n'
                                                                            ':(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$Lmonday',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchLselected =
                                                                                Lmonday as String;
                                                                          },
                                                                        ),
                                                                      if (Lmonday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones. :(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$Lmonday2',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchLselected =
                                                                                Lmonday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'SNACK DE LA TARDE',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (ASmonday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones\n'
                                                                            ':(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$ASmonday',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTLselected =
                                                                                ASmonday as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      if (ASmonday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            'Lo sentimos no hay dos opciones. :(',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$ASmonday2',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTLselected =
                                                                                ASmonday2 as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                                isButtonActivate = false;
                                          } : null ,
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
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Color(0xFFF5F5F5),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 40.0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      snackMMselected =
                                                                          'N/A';
                                                                      lunchMselected =
                                                                          'N/A';
                                                                      snackTMselected =
                                                                          'N/A';

                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                      'Este día no comeré.',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          5,
                                                                      primary:
                                                                          Color(
                                                                              0xFFF35F34),
                                                                      shape:
                                                                          new RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            new BorderRadius.circular(50.0),
                                                                      ),
                                                                      side:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFF15156),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                      minimumSize: Size(
                                                                          150.0,
                                                                          30.0),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'SNACK DE LA MAÑANA',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (MStuesday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MStuesday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMMselected =
                                                                                MStuesday as String;
                                                                          },
                                                                        ),
                                                                      if (MStuesday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MStuesday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMMselected =
                                                                                MStuesday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'ALMUERZO',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (Ltuesday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Ltuesday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchMselected =
                                                                                Ltuesday as String;
                                                                          },
                                                                        ),
                                                                      if (Ltuesday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Ltuesday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchMselected =
                                                                                Ltuesday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'SNACK DE LA TARDE',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (AStuesday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$AStuesday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTMselected =
                                                                                AStuesday as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      if (AStuesday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$AStuesday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTMselected =
                                                                                AStuesday2 as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
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
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Color(0xFFF5F5F5),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 40.0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      snackMMiselected =
                                                                          'N/A';
                                                                      lunchMiselected =
                                                                          'N/A';
                                                                      snackTMiselected =
                                                                          'N/A';

                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                      'Este día no comeré.',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          5,
                                                                      primary:
                                                                          Color(
                                                                              0xFFF35F34),
                                                                      shape:
                                                                          new RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            new BorderRadius.circular(50.0),
                                                                      ),
                                                                      side:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFF15156),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                      minimumSize: Size(
                                                                          150.0,
                                                                          30.0),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'SNACK DE LA MAÑANA',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (MSwednesay ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSwednesay',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMMiselected =
                                                                                MSwednesay as String;
                                                                          },
                                                                        ),
                                                                      if (MSwednesay2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSwednesay2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMMiselected =
                                                                                MSwednesay2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'ALMUERZO',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (Lwednesay ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child:
                                                                              Text(
                                                                            '$Lwednesay',
                                                                            style:
                                                                                TextStyle(color: Color(0XFF000000)),
                                                                          ),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchMiselected =
                                                                                Lwednesay as String;
                                                                          },
                                                                        ),
                                                                      if (Lwednesay2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Lwednesay2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchMiselected =
                                                                                Lwednesay2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'SNACK DE LA TARDE',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (ASwednesay ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASwednesay',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTMiselected =
                                                                                ASwednesay as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      if (ASwednesay2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASwednesay2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTMiselected =
                                                                                ASwednesay2 as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
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
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Color(0xFFF5F5F5),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 40.0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      snackMJselected =
                                                                          'N/A';
                                                                      lunchJselected =
                                                                          'N/A';
                                                                      snackTJselected =
                                                                          'N/A';

                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                      'Este día no comeré.',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          5,
                                                                      primary:
                                                                          Color(
                                                                              0xFFF35F34),
                                                                      shape:
                                                                          new RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            new BorderRadius.circular(50.0),
                                                                      ),
                                                                      side:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFF15156),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                      minimumSize: Size(
                                                                          150.0,
                                                                          30.0),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'SNACK DE LA MAÑANA',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (MSthursday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSthursday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMJselected =
                                                                                MSthursday as String;
                                                                          },
                                                                        ),
                                                                      if (MSthursday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSthursday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFFFFFFF),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMJselected =
                                                                                MSthursday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'ALMUERZO',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (Lthursday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Lthursday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchJselected =
                                                                                Lthursday as String;
                                                                          },
                                                                        ),
                                                                      if (Lthursday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Lthursday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchJselected =
                                                                                Lthursday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'SNACK DE LA TARDE',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (ASthursday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASthursday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTJselected =
                                                                                ASthursday as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      if (ASthursday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASthursday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTJselected =
                                                                                ASthursday2 as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
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
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Color(0xFFF5F5F5),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 40.0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      snackMVselected =
                                                                          'N/A';
                                                                      lunchVselected =
                                                                          'N/A';
                                                                      snackTVselected =
                                                                          'N/A';

                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                      'Este día no comeré.',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          5,
                                                                      primary:
                                                                          Color(
                                                                              0xFFF35F34),
                                                                      shape:
                                                                          new RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            new BorderRadius.circular(50.0),
                                                                      ),
                                                                      side:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFF15156),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                      minimumSize: Size(
                                                                          150.0,
                                                                          30.0),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'SNACK DE LA MAÑANA',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (MSfriday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSfriday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMVselected =
                                                                                MSfriday as String;
                                                                          },
                                                                        ),
                                                                      if (MSfriday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$MSfriday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackMVselected =
                                                                                MSfriday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'ALMUERZO',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (Lfriday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Lfriday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchVselected =
                                                                                Lfriday as String;
                                                                          },
                                                                        ),
                                                                      if (Lfriday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$Lfriday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            lunchVselected =
                                                                                Lfriday2 as String;
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'SNACK DE LA TARDE',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFF35F34),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      if (ASfriday ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones\n'
                                                                              ':(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASfriday',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTVselected =
                                                                                ASfriday as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      if (ASfriday2 ==
                                                                          '')
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              'Lo sentimos no hay dos opciones. :(',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              (null),
                                                                        )
                                                                      else
                                                                        ElevatedButton(
                                                                          child: Text(
                                                                              '$ASfriday2',
                                                                              style: TextStyle(color: Color(0xFF000000))),
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            fixedSize:
                                                                                Size(150, 175),
                                                                            primary:
                                                                                Color(0xFFF5F5F5),
                                                                            onPrimary:
                                                                                Color(0xFFF35F34),
                                                                            shape:
                                                                                new RoundedRectangleBorder(
                                                                              borderRadius: new BorderRadius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            snackTVselected =
                                                                                ASfriday2 as String;
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
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
                                    onPressed: () async {
                                      //GUARDAR EN BASE
                                      final order = Orders(
                                        email: email,
                                        date: date,
                                        snackML: snackMLselected,
                                        lunchL: lunchLselected,
                                        snackTL: snackTLselected,
                                        snackMM: snackMMselected,
                                        lunchM: lunchMselected,
                                        snackTM: snackTMselected,
                                        snackMMi: snackMMiselected,
                                        lunchMi: lunchMiselected,
                                        snackTMi: snackTMiselected,
                                        snackMJ: snackMJselected,
                                        lunchJ: lunchJselected,
                                        snackTJ: snackTJselected,
                                        snackMV: snackMVselected,
                                        lunchV: lunchVselected,
                                        snackTV: snackTVselected,
                                      );
                                      await UserSheetsApi.insert(
                                          [order.toJson()]);
                                    },
                                    child: Text(
                                      'Guardar',
                                      style: const TextStyle(
                                          letterSpacing: 1.1,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: Color(0xFFF35F34),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(50.0),
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
                          )
                        ],
                      ),
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
                                                          MealScreen(
                                                              dairy: dairy,
                                                              cereal: cereal,
                                                              protein: protein,
                                                              fat: fat,
                                                              vegetables:
                                                                  vegetables,
                                                              fruit: fruit,
                                                              example:
                                                                  example)),
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
                                                          MealScreen2(
                                                              dairy: dairyMS,
                                                              cereal: cerealMS,
                                                              protein:
                                                                  proteinMS,
                                                              fat: fatMS,
                                                              vegetables:
                                                                  vegetablesMS,
                                                              fruit: fruitMS,
                                                              example:
                                                                  exampleMS)),
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
                                                        MealScreen3(
                                                            dairy: dairyL,
                                                            cereal: cerealL,
                                                            protein: proteinL,
                                                            fat: fatL,
                                                            vegetables:
                                                                vegetablesL,
                                                            fruit: fruitL,
                                                            example: exampleL)),
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
                                                        MealScreen4(
                                                            dairy: dairyAS,
                                                            cereal: cerealAS,
                                                            protein: proteinAS,
                                                            fat: fatAS,
                                                            vegetables:
                                                                vegetablesAS,
                                                            fruit: fruitAS,
                                                            example:
                                                                exampleAS)),
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
                                                        MealScreen5(
                                                            dairy: dairyD,
                                                            cereal: cerealD,
                                                            protein: proteinD,
                                                            fat: fatD,
                                                            vegetables:
                                                                vegetablesD,
                                                            fruit: fruitD,
                                                            example: exampleD)),
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

/*_selected(bool auxSelectedMenu){
  print(auxSelectedMenu);
  if(auxSelectedMenu == false){
    return Color(0xFFF35F34);
  }else{
    return Colors.black;
  }
}*/

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        backgroundColor: Color(0xFFF5F5F5),
        title: Text(
          'Foodie informa',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF35F34),
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        children: <Widget>[
          Container(
            child: Text(
              'Recuera para enviar tu elección de menú, primero debes escoger el snack de la mañana, después el almuerzo y por último el snack de la tarde \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                text: 'Nota: ',
                style: TextStyle(
                  color: Color(0xFF093824),
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'Si no deseas escoger el menú en cualquier día puedes pulsar el botón: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: 'Este día no comeré',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0 ,left: 40.0, right: 40.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Entendido',
                style: TextStyle(
                    letterSpacing: 1.1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
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
            ),
          ),
        ],
        contentPadding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      );
    },
  );
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
              width: 5,
            ),
            Text("$leftAmount"),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ],
    );
  }
}

/*Widget _conditional() {
  String day = DateFormat('EEEE').format(DateTime.now());
  print(day);

  String day2 = 'Saturday';

  if (day2 != 'Saturday') {
    return _Menu();
  } else {
    return _Choose();
  }
}*/

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
                    'Snack1 \n',
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
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
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
                      //'',
                      'Snack1',
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
                    //'',
                    'Almuerzo1',
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
                    //'',
                    'Snack21',
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

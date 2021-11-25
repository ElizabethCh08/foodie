import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_diet2/api/user_sheets_api.dart';
import 'package:flutter_diet2/model/afternoonSValues.dart';
import 'package:flutter_diet2/model/bodyfat.dart';
import 'package:flutter_diet2/model/breakfastValues.dart';
import 'package:flutter_diet2/model/dinnerValues.dart';
import 'package:flutter_diet2/model/imc.dart';
import 'package:flutter_diet2/model/lunchValues.dart';
import 'package:flutter_diet2/model/mass.dart';
import 'package:flutter_diet2/model/morningSValues.dart';
import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/model/visceralfat.dart';
import 'package:flutter_diet2/model/waist.dart';
import 'package:flutter_diet2/model/weight.dart';
import 'package:flutter_diet2/model/menu.dart';
import 'package:flutter_diet2/pages/home_screen.dart';
import 'package:flutter_diet2/widgets/user_form_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  User? user;
  Weight? weight;
  Waist? waist;
  Mass? mass;
  Bodyfat? bodyfat;
  Visceralfat? visceralfat;
  Imc? imc;
  Menu? morningMenu;
  Menu? lunchMenu;
  Menu? nightMenu;
  Breakfast? breakfastValues;
  MorningS? morningSValues;
  Lunch? lunchValues;
  AfternoonS? afternoonSValues;
  Dinner? dinnerValues;
  String? msgError;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFF15156),
              const Color(0xFFF9A03F),
            ],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserFormWidget(
                user: user,
                msgErr: msgError,
                onFindByUserID: (userStr) async {
                  //User found
                  final encontrado = await UserSheetsApi.getById(userStr.email);
                  //Measures
                  final pesoRecuperado =
                      await UserSheetsApi.getWeightById(userStr.email);
                  final cinturaRecuperado =
                      await UserSheetsApi.getWaistById(userStr.email);
                  final masaRecuperado =
                      await UserSheetsApi.getMassById(userStr.email);
                  final grasaRecuperado =
                      await UserSheetsApi.getBodyfatById(userStr.email);
                  final visceralRecuperado =
                      await UserSheetsApi.getVisceralfatById(userStr.email);
                  final imcRecuperado =
                      await UserSheetsApi.getImcById(userStr.email);
                  //Food values
                  final breakfastValuesRecuperado =
                      await UserSheetsApi.getBreakfastById(userStr.email);
                  final morningSValuesRecuperado =
                      await UserSheetsApi.getMorningSById(userStr.email);
                  final lunchValuesRecuperado =
                      await UserSheetsApi.getLunchById(userStr.email);
                  final afternoonSValuesRecuperado =
                      await UserSheetsApi.getAfternoonSById(userStr.email);
                  final dinnerValuesRecuperado =
                      await UserSheetsApi.getDinnerById(userStr.email);
                  //Menus
                  final menuMRecuperado =
                      await UserSheetsApi.getMorningMenuById(1);
                  final menuARecuperado =
                      await UserSheetsApi.getMorningMenuById(2);
                  final menuNRecuperado =
                      await UserSheetsApi.getMorningMenuById(3);

                  if (encontrado?.password == userStr.password) {
                    setState(() {
                      this.user = encontrado;
                      this.weight = pesoRecuperado;
                      this.waist = cinturaRecuperado;
                      this.mass = masaRecuperado;
                      this.bodyfat = grasaRecuperado;
                      this.visceralfat = visceralRecuperado;
                      this.imc = imcRecuperado;
                      this.breakfastValues = breakfastValuesRecuperado;
                      this.morningSValues = morningSValuesRecuperado;
                      this.lunchValues = lunchValuesRecuperado;
                      this.afternoonSValues = afternoonSValuesRecuperado;
                      this.dinnerValues = dinnerValuesRecuperado;
                      this.morningMenu = menuMRecuperado;
                      this.lunchMenu = menuARecuperado;
                      this.nightMenu = menuNRecuperado;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreensw(
                                user: encontrado,
                                peso: pesoRecuperado,
                                cintura: cinturaRecuperado,
                                masa: masaRecuperado,
                                grasaCorporal: grasaRecuperado,
                                grasaVisceral: visceralRecuperado,
                                imc: imcRecuperado,
                                breakfast: breakfastValuesRecuperado,
                                morningSnack: morningSValuesRecuperado,
                                lunch: lunchValuesRecuperado,
                                afternoonSnack: afternoonSValuesRecuperado,
                                dinner: dinnerValuesRecuperado,
                                morningMenu: menuMRecuperado,
                                lunchMenu: menuARecuperado,
                                nightMenu: menuNRecuperado,
                              )),
                    );
                  } else {
                    setState(() {
                      this.user = null;
                      this.msgError = "Usuario o clave incorrecta";
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

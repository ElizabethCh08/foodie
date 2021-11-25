import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_diet2/model/afternoonSValues.dart';
import 'package:flutter_diet2/model/bodyfat.dart';
import 'package:flutter_diet2/model/breakfastValues.dart';
import 'package:flutter_diet2/model/dinnerValues.dart';
import 'package:flutter_diet2/model/imc.dart';
import 'package:flutter_diet2/model/lunchValues.dart';
import 'package:flutter_diet2/model/mass.dart';
import 'package:flutter_diet2/model/morningSValues.dart';
import 'package:flutter_diet2/model/orders.dart';
import 'package:flutter_diet2/model/user.dart';
import 'package:flutter_diet2/model/visceralfat.dart';
import 'package:flutter_diet2/model/waist.dart';
import 'package:flutter_diet2/model/weight.dart';
import 'package:flutter_diet2/model/menu.dart';
import 'package:gsheets/gsheets.dart';

class UserSheetsApi {
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "foodiegsheets",
  "private_key_id": "d91a0c309622ff88823f7f951f4560e2bca2c9ad",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDo298J2po8jncO\nuz7ix5lEHT+MgLQJi9zeqNv/e2riN88taSgKmsZa7Svona9t9yPmxF7PINzv2Lvs\nZOt34c2HzisFbaUk6u84ubuec7xDC8xZ/gxDJ0NBXYtGAOuKkeWV10d/ynTSs0F0\n40+QxQvA3xYN4HrnWefk200evWHK3j7HmP/Zc1JPHRUJ0JbztnuH+zU0eIAdCzN9\n2vwrRYkOoQ80uY5bL6S4wiCalk2EGSHFyQQdtSoCZJp9dIJ+m/Ujkv0W/gMTcgBI\nv1ZMNkvltNJU7c9GO+3AQIcGyT6t7yTUf6zrIxsqsbpQLDtF1m/MW433oQAQfttE\nilzdU75BAgMBAAECggEAQhFkOnUCLu1S/WSGJqzwIQHVboVzz4OV4rzxUo8PV+jy\nyNUdrciVP+Yr/5+Bz0cAMjEEH2uZFBof06YcoxJ3kLEfxrYB1bQstKEKCR6YS0OV\nMvFgREtnCyxB4FZRfisAA2Al4q2sML34c/QstowZ1hrVtJE8/dgl8eqA+phMH1Ud\nzR6CsunCF4ybH4J722sh0+seme+2ojfgl9+12QdbW+efFp8evQdGLaFLi0/fvicK\nTCh0LQIkcZFc+LWsGu+58eZdUUckupu43bRUcU81l2N2y1gOz3G6DQH7qjaLskLB\nu+H2etknQh5VHBTY5xhfnXHTKZ7rm0TPtZDzHCiLawKBgQD6sxIhZZS96bc52DrK\nrKMPgRl1yIiisHz1pg4JJFF7DjfrZhsOGlKYNLLaZ6M6RNSa/wH8f9LvqND58sTZ\nJ2AH2EeWM//e0idHoZgI+m8IdCJygcA6ZB1OlojFXU5n/w8p/T4yvPxjTaQv2wIw\nnQUb57wHBFEx+gJrOEeBi6xzJwKBgQDtyDycCEUiQJZ0AvB4/g9dMtXYb7nAMlGj\nu51DMvAOiPGB1ftdYpY52MH85jlrZnByDbtUZEv0yWKih7eg6BrktxjGmLJoDLin\nvZXBuo3OXQXjWwDj3hJLAX0Y/ljFq0vHj9PEDzFy0pMW5rghJIBPVOXl97kcDrqu\nUCrPMDQEVwKBgFWlGVuJbXAXyP2c7jDRG3+vdfg0AuG5c2ckTIU5ABEPAXGM109R\nFMhksHlGkI/Wdd9hoNcXAAPZ41KQaklZV0g2zfX1W8NOfhbNkLf4fjggHKiLxRTt\noMl5Sc5LGv8SNqb8meQRhhOSsbWblzruWZF38FdhVS/CnlLszhjmk4pfAoGBAJnZ\nyX2bzD+RUsfVbwqaOA6xabQU9jbpV/F83xAv0StWaAz+CxotQ85B9aJQxC49pdvm\nDqNYEd1cwDkxXxr5kw0RezJkcmrocEH4ZQFoV4CCp+CnbTgC5Asr92lIiN+9KdcB\ntJ9SxUfp/8n9ln27RFoQMIBPfLIuxZMrw8czBTUZAoGBAPk8YzVE/lxQsVavCBhO\nzKs/kNqHjJNS4aXcsYaRj/43T4/dKwBS4eFmFBJ/bfIzokF6Bny4sbu/h6PleKjg\naVoiRsT6Uyyc9RcpqEOzD5IVlBBKUYETd9EYs1M8L37pFW/K66oqzzlk+8W+FjUi\n0oI8gQQPPdQsMqVvlI4nXina\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@foodiegsheets.iam.gserviceaccount.com",
  "client_id": "112403548791891693751",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40foodiegsheets.iam.gserviceaccount.com"
}

  ''';
  static final _spreadsheetId = '1fdOiHPwDqLEJW6SRVWLYX4RT-htizfPQxnf7Q-IaHo8';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _userSheet;
  static Worksheet? _userSheetWeight;
  static Worksheet? _userSheetWaist;
  static Worksheet? _userSheetMass;
  static Worksheet? _userSheetBodyfat;
  static Worksheet? _userSheetVisceralfat;
  static Worksheet? _userSheetImc;
  static Worksheet? _userBreakfast;
  static Worksheet? _userMorningSnack;
  static Worksheet? _userLunch;
  static Worksheet? _userAfternoonSnack;
  static Worksheet? _userDinner; 

  static Worksheet? _menu;

  static Worksheet? _userOrders;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
      _userSheet = await _getWorkSheet(spreadsheet, title: 'Users');

      _userSheetWeight = await _getWorkSheet(spreadsheet, title: 'Weight');
      _userSheetWaist = await _getWorkSheet(spreadsheet, title: 'WaistCircumference');
      _userSheetMass = await _getWorkSheet(spreadsheet, title: 'MuscularMass');
      _userSheetBodyfat = await _getWorkSheet(spreadsheet, title: 'Bodyfat');
      _userSheetVisceralfat = await _getWorkSheet(spreadsheet, title: 'Visceralfat');
      _userSheetImc = await _getWorkSheet(spreadsheet, title: 'IMC');

      _userBreakfast = await _getWorkSheet(spreadsheet, title: 'Breakfast');
      _userMorningSnack = await _getWorkSheet(spreadsheet, title: 'MorningSnack');
      _userLunch = await _getWorkSheet(spreadsheet, title: 'Lunch');
      _userAfternoonSnack = await _getWorkSheet(spreadsheet, title: 'AfternoonSnack');
      _userDinner = await _getWorkSheet(spreadsheet, title: 'Dinner');

      _menu =  await _getWorkSheet(spreadsheet, title: 'Menu');

      _userOrders = await _getWorkSheet(spreadsheet, title: 'Orders');

      final firstRow = OrdersFields.getFields();
      _userOrders!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  //User spreadsheet

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;

    final lastRow = await _userSheet!.values.lastRow();

    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<User>> getAll() async {
    if (_userSheet == null) return <User>[];

    final users = await _userSheet!.values.map.allRows();
    return users == null ? <User>[] : users.map(User.fromJson).toList();
  }

  static Future<User?> getById(String id) async {
    if (_userSheet == null) return null;

    final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : User.fromJson(json);
  }

  //Weight spreadsheet

  static Future<int> getRowCountWeight() async {
    if (_userSheetWeight == null) return 0;

    final lastRow = await _userSheetWeight!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Weight>> getAllWeight() async {
    if (_userSheetWeight == null) return <Weight>[];

    final weights = await _userSheetWeight!.values.map.allRows();
    return weights == null ? <Weight>[] : weights.map(Weight.fromJson).toList();
  }

  static Future<Weight?> getWeightById(String id) async {
    if (_userSheetWeight == null) return null;

    //final json = await _userSheetWeight!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Weight.fromJson(json);
     final weights = await _userSheetWeight!.values.map.allRows();
     final userWeights = weights == null ? <Weight>[]: weights.map(Weight.fromJson).where((i) => i.email==id).toList();
     userWeights.sort((a,b) => a.compareDates(b));
     return userWeights[0] == null ? null : userWeights[0] ;
  }

  static Future<List<Weight>> getAllUserWeights(String id) async{
    if(_userSheetWeight == null) return <Weight>[];

    final weights = await _userSheetWeight!.values.map.allRows();
    return weights == null ? <Weight>[]: weights.map(Weight.fromJson).where((i) => i.email==id).toList();
  }

  //Waist spreadsheet

  static Future<int> getRowCountWaist() async {
    if (_userSheetWaist == null) return 0;

    final lastRow = await _userSheetWaist!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Waist>> getAllWaist() async {
    if (_userSheetWaist == null) return <Waist>[];

    final waists = await _userSheetWaist!.values.map.allRows();
    return waists == null ? <Waist>[] : waists.map(Waist.fromJson).toList();
  }

  static Future<Waist?> getWaistById(String id) async {
    if (_userSheetWaist == null) return null;

    //final json = await _userSheetWaist!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Waist.fromJson(json);
    final waists = await _userSheetWaist!.values.map.allRows();
    final userWaist = waists == null ? <Waist>[] : waists.map(Waist.fromJson).where((i) => i.email==id).toList();
    userWaist.sort((a,b) => a.compareDates(b));
    return userWaist[0] == null ? null : userWaist[0];
  }

  // Mass spreadsheet

  static Future<int> getRowCountMass() async{
    if (_userSheetMass == null) return 0;

    final lastRow = await _userSheetMass!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Mass>> getAllMass() async{
    if (_userSheetMass == null) return <Mass>[];

    final masses = await _userSheetMass!.values.map.allRows();
    return masses == null ? <Mass>[] : masses.map(Mass.fromJson).toList();

  }

  static Future<Mass?> getMassById(String id) async{
    if (_userSheetMass == null) return null;

    //final json = await _userSheetMass!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Mass.fromJson(json);
    final masses = await _userSheetMass!.values.map.allRows();
    final userMasses = masses == null ? <Mass>[]: masses.map(Mass.fromJson).where((i) => i.email==id).toList();
    userMasses.sort((a,b) => a.compareDates(b));
    return userMasses[0] == null ? null : userMasses[0];

  }

  // Body_fat Spreadsheet
  
  static Future<int> getRowCountBodyfat() async{
    if(_userSheetBodyfat == null) return 0;

    final lastRow = await _userSheetBodyfat!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Bodyfat>> getAllBodyfat() async{
    if(_userSheetBodyfat == null) return <Bodyfat>[];

    final bodies = await _userSheetBodyfat!.values.map.allRows();
    return bodies == null ? <Bodyfat>[] : bodies.map(Bodyfat.fromJson).toList();
  }

  static Future<Bodyfat?> getBodyfatById(String id) async{
    if(_userSheetBodyfat == null) return null;

    //final json = await _userSheetBodyfat!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Bodyfat.fromJson(json);
    final bodies = await _userSheetBodyfat!.values.map.allRows();
    final userBodies = bodies == null ? <Bodyfat>[]: bodies.map(Bodyfat.fromJson).where((i) => i.email==id).toList();
    userBodies.sort((a,b) => a.compareDates(b));
    return userBodies[0] == null ? null : userBodies[0];
  }

  // Visceral_fat Spreadsheet

  static Future<int> getRowCountVisceralfat() async{
    if(_userSheetVisceralfat == null) return 0;

    final lastRow = await _userSheetVisceralfat!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Visceralfat>> getAllVisceralfat() async{
    if(_userSheetVisceralfat == null) return <Visceralfat>[];

    final visceralfats = await _userSheetVisceralfat!.values.map.allRows();
    return visceralfats == null ? <Visceralfat>[] : visceralfats.map(Visceralfat.fromJson).toList();    
  }

  static Future<Visceralfat?> getVisceralfatById(String id)async{
    if(_userSheetVisceralfat == null) return null;

    //final json = await _userSheetVisceralfat!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Visceralfat.fromJson(json);
    final visceralfats = await _userSheetVisceralfat!.values.map.allRows();
    final userVisceralfats = visceralfats == null ? <Visceralfat>[]: visceralfats.map(Visceralfat.fromJson).where((i) => i.email==id).toList();
    userVisceralfats.sort((a,b) => a.compareDates(b));
    return userVisceralfats[0] == null ? null : userVisceralfats[0];
  }

  //IMC Spreadsheet

  static Future<int> getRowCountImc() async{
    if(_userSheetImc == null) return 0;

    final lastRow = await _userSheetImc!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Imc>> getAllImc() async{
    if(_userSheetImc == null) return <Imc>[];

    final imcs = await _userSheetImc!.values.map.allRows();
    return imcs == null ? <Imc>[] : imcs.map(Imc.fromJson).toList();
  }

  static Future<Imc?> getImcById(String id)async{
    if(_userSheetImc == null) return null;

    //final json = await _userSheetImc!.values.map.rowByKey(id, fromColumn: 1);
    //return json == null ? null : Imc.fromJson(json);
    final imcs = await _userSheetImc!.values.map.allRows();
    final userImcs = imcs == null ? <Imc>[]: imcs.map(Imc.fromJson).where((i) => i.email==id).toList();
    userImcs.sort((a,b) => a.compareDates(b));
    return userImcs[0] == null ? null : userImcs[0];
  }

  //USER BREAKFAST VALUES

  static Future<int> getRowCountBreakfastValues() async{
    if(_userBreakfast == null) return 0;

    final lastRow = await _userBreakfast!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Breakfast>> getAllBreakfastValues() async{
    if(_userBreakfast == null) return <Breakfast>[];

    final breakfastValues = await _userBreakfast!.values.map.allRows();
    return breakfastValues == null ? <Breakfast>[] : breakfastValues.map(Breakfast.fromJson).toList();
  }
  
  static Future<Breakfast?> getBreakfastById(String id) async{
    if(_userBreakfast == null) return null;

    final breakfastValues = await _userBreakfast!.values.map.allRows();
    final userBValues = breakfastValues == null ? <Breakfast>[] : breakfastValues.map(Breakfast.fromJson).where((i) => i.email==id).toList();
    return userBValues[0] == null ? null : userBValues[0];
  }
  
  static Future<List<Breakfast>> getAllUserBreakfastValues (String id) async{
    if(_userBreakfast == null) return <Breakfast>[];

    final breakfastValues = await _userBreakfast!.values.map.allRows();
    return breakfastValues == null ? <Breakfast>[] : breakfastValues.map(Breakfast.fromJson).where((i) => i.email==id).toList();
  }
  
  //USER MORNING SNACK VALUES

  static Future<int> getRowCountMorningSValues() async{
    if(_userMorningSnack == null) return 0;

    final lastRow = await _userMorningSnack!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }
  
  static Future<List<MorningS>> getAllMorningSValues() async{
    if(_userMorningSnack == null) return <MorningS>[];

    final morningSValues = await _userMorningSnack!.values.map.allRows();
    return morningSValues == null ? <MorningS>[] : morningSValues.map(MorningS.fromJson).toList();
  }
  
  static Future<MorningS?> getMorningSById(String id) async{
    if(_userMorningSnack == null) return null;

    final morningSValues = await _userMorningSnack!.values.map.allRows();
    final userMValues = morningSValues == null ? <MorningS>[] : morningSValues.map(MorningS.fromJson).where((i) => i.email==id).toList();
    return userMValues[0] == null ? null : userMValues[0];
  }
  
  //USER LUNCH VALUES
  static Future<int> getRowCountLunchValues() async{
    if(_userLunch == null) return 0;

    final lastRow = await _userLunch!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }
  
  static Future<List<Lunch>> getAllLunchValues() async{
    if(_userLunch == null) return <Lunch>[];

    final lunchValues = await _userLunch!.values.map.allRows();
    return lunchValues == null ? <Lunch>[] : lunchValues.map(Lunch.fromJson).toList();

  }
  
  static Future<Lunch?> getLunchById(String id) async{
    if (_userLunch == null) return null;

    final lunchValues = await _userLunch!.values.map.allRows();
    final userLValues = lunchValues == null ? <Lunch>[] : lunchValues.map(Lunch.fromJson).where((i) => i.email==id).toList();
    return userLValues[0] == null ? null : userLValues[0];
  }
  
  //USER AFTERNOON SNACK VALUES
  static Future<int> getRowCountAfternoonSValues() async{
    if(_userAfternoonSnack == null) return 0;

    final lastRow = await _userAfternoonSnack!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }
  
  static Future<List<AfternoonS>> getAllAfternoonSValues() async{
    if(_userAfternoonSnack == null) return <AfternoonS>[];

    final afternoonSValues = await _userAfternoonSnack!.values.map.allRows();
    return afternoonSValues == null ? <AfternoonS>[] : afternoonSValues.map(AfternoonS.fromJson).toList();
  }
  
  static Future<AfternoonS?> getAfternoonSById(String id) async{
    if(_userAfternoonSnack == null) return null;

    final afternoonSValues = await _userAfternoonSnack!.values.map.allRows();
    final userAValues = afternoonSValues == null ? <AfternoonS>[] : afternoonSValues.map(AfternoonS.fromJson).where((i) => i.email==id).toList();
    return userAValues[0] == null ? null : userAValues[0];
  }

  //USER DINNER VALUES
  static Future<int> getRowCountDinnerValues() async{
    if(_userDinner == null) return 0;

    final lastRow = await _userDinner!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }
  
  static Future<List<Dinner>> getAllDinnerValues() async{
    if(_userDinner == null) return <Dinner>[];

    final dinnerValues = await _userDinner!.values.map.allRows();
    return dinnerValues == null ? <Dinner>[] : dinnerValues.map(Dinner.fromJson).toList();
  }
  
  static Future<Dinner?> getDinnerById(String id) async{
    if(_userDinner == null) return null;

    final dinnerValues = await _userDinner!.values.map.allRows();
    final userDValues = dinnerValues == null ? <Dinner>[] : dinnerValues.map(Dinner.fromJson).where((i) => i.email==id).toList();
    return userDValues[0] == null ? null : userDValues[0];
  }
  
  //MENU
  static Future<int> getRowMorningMenu() async{
    if(_menu == null) return 0;

    final lastRow = await _menu!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Menu>> getAllMorningMenu() async{
    if(_menu == null) return <Menu>[];

    final mms = await _menu!.values.map.allRows();
    return mms == null ? <Menu>[] : mms.map(Menu.fromJson).toList();
  }

  static Future<Menu?> getMorningMenuById(int id)async{
    if(_menu == null) return null;

    final mms = await _menu!.values.map.allRows();
    final userMms = mms == null ? <Menu>[]: mms.map(Menu.fromJson).where((i) => i.code ==id).toList();
    userMms.sort((a,b) => a.compareDates(b));
    return userMms[0] == null ? null : userMms[0];
  }

  

  //INSERT ORDERS

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userOrders == null) return;

    _userOrders!.values.map.appendRows(rowList);
  }
}

import 'package:flutter_diet2/model/user.dart';
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

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
      _userSheet = await _getWorkSheet(spreadsheet, title: 'Users');
      _userSheetWeight = await _getWorkSheet(spreadsheet, title: 'Weight');

      final firstRow = UserFields.getFields();
      _userSheet!.values.insertRow(1, firstRow);
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

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;

    final lastRow = await _userSheet!.values.lastRow();

    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<User>> getAll() async{
    if (_userSheet == null) return <User>[];

    final users = await _userSheet!.values.map.allRows();
    return users == null ? <User>[] : users.map(User.fromJson).toList();
  }

  static Future<User?> getById(String id) async {
    if (_userSheet == null) return null;
      final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
      return json == null ? null : User.fromJson(json);
  }

  /*static Future<Weight?> getWeightById(String id) async {
    if (_userSheetWeight == null) return null;
      final json = await _userSheetWeight!.values.map.rowByKey(id, fromColumn: 1);
      return json == null ? null : Weight.fromJson(json);
  }
*/
  

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet == null) return;

    _userSheet!.values.map.appendRows(rowList);
  }
}

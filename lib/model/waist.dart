import 'dart:convert';

class WaistFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value, lowerRange, topRange];
}

class Waist{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Waist({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Waist fromJson(Map<String, dynamic> json) => Waist(
    email: json[WaistFields.email],
    id: jsonDecode(json[WaistFields.id]),
    date: json[WaistFields.date],
    value: jsonDecode(json[WaistFields.value]),
    lowerRange: jsonDecode(json[WaistFields.lowerRange]),
    topRange: jsonDecode(json[WaistFields.topRange]),
    );

  Map<String, dynamic> toJson() => {
    WaistFields.email: email,
    WaistFields.id: id,
    WaistFields.date: date,
    WaistFields.value: value,
    WaistFields.lowerRange: lowerRange,
    WaistFields.topRange: topRange,
  };

  int compareDates(b){

    final aDate = this.date == null ? '' : date!;
    DateTime at = DateTime.parse(aDate);
    final bDate = b.date == null ? '' : b.date!;
    DateTime bt = DateTime.parse(bDate);

    bool res= bt.isAfter(at);
   
    return res? 1 : -1;
  }
}
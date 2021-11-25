import 'dart:convert';

class MassFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value, lowerRange, topRange];
}

class Mass{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Mass({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Mass fromJson(Map<String, dynamic> json) => Mass(
    email: json[MassFields.email],
    id: jsonDecode(json[MassFields.id]),
    date: json[MassFields.date],
    value: jsonDecode(json[MassFields.value]),
    lowerRange: jsonDecode(json[MassFields.lowerRange]),
    topRange: jsonDecode(json[MassFields.topRange]),
  );

  Map<String, dynamic> toJson() => {
    MassFields.email: email,
    MassFields.id: id,
    MassFields.date: date,
    MassFields.value: value,
    MassFields.lowerRange: lowerRange,
    MassFields.topRange: topRange,
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
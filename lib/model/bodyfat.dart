import 'dart:convert';

class BodyfatFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value, lowerRange, topRange];
}

class Bodyfat{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Bodyfat({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Bodyfat fromJson(Map<String, dynamic> json) => Bodyfat(
    email: json[BodyfatFields.email],
    id: jsonDecode(json[BodyfatFields.id]),
    date: json[BodyfatFields.date],
    value: jsonDecode(json[BodyfatFields.value]),
    lowerRange: jsonDecode(json[BodyfatFields.lowerRange]),
    topRange: jsonDecode(json[BodyfatFields.topRange]),
  );

  Map<String, dynamic> toJson() => {
    BodyfatFields.email: email,
    BodyfatFields.id: id,
    BodyfatFields.date: date,
    BodyfatFields.value: value,
    BodyfatFields.lowerRange: lowerRange,
    BodyfatFields.topRange: topRange,
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
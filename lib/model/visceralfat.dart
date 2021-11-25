import 'dart:convert';

class VisceralfatFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value,  lowerRange, topRange];
}

class Visceralfat{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Visceralfat({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Visceralfat fromJson(Map<String, dynamic> json) => Visceralfat(
    email: json[VisceralfatFields.email],
    id: jsonDecode(json[VisceralfatFields.id]),
    date: json[VisceralfatFields.date],
    value: jsonDecode(json[VisceralfatFields.value]),
    lowerRange: jsonDecode(json[VisceralfatFields.lowerRange]),
    topRange: jsonDecode(json[VisceralfatFields.topRange]),
    );

  Map<String, dynamic> toJson() => {
    VisceralfatFields.email: email,
    VisceralfatFields.id: id,
    VisceralfatFields.date: date,
    VisceralfatFields.value: value,
    VisceralfatFields.lowerRange: lowerRange,
    VisceralfatFields.topRange: topRange,
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
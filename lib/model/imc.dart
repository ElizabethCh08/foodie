import 'dart:convert';

class ImcFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value, lowerRange, topRange];
}

class Imc{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Imc({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Imc fromJson(Map<String, dynamic> json) => Imc(
    email: json[ImcFields.email],
    id: jsonDecode(json[ImcFields.id]),
    date: json[ImcFields.date],
    value: jsonDecode(json[ImcFields.value]),
    lowerRange: jsonDecode(json[ImcFields.lowerRange]),
    topRange: jsonDecode(json[ImcFields.topRange]),
    );

  Map<String, dynamic> toJson() => {
    ImcFields.email: email,
    ImcFields.id: id,
    ImcFields.date: date,
    ImcFields.value: value,
    ImcFields.lowerRange: lowerRange,
    ImcFields.topRange: topRange,
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
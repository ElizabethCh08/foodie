import 'dart:convert';

class WeightFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';
  static final String lowerRange = 'lowerRange';
  static final String topRange = 'topRange';

  static List<String> getFields() => [email, id, date, value, lowerRange, topRange];
}

class Weight{
  final String? email;
  final int? id;
  final String? date;
  final int? value;
  final int? lowerRange;
  final int? topRange;

  const Weight({
    this.email,
    this.id,
    this.date,
    this.value,
    this.lowerRange,
    this.topRange,
  });

  static Weight fromJson(Map<String, dynamic> json) => Weight(
    email: json[WeightFields.email],
    id: jsonDecode(json[WeightFields.id]),
    date: json[WeightFields.date],
    value: jsonDecode(json[WeightFields.value]),
    lowerRange: jsonDecode(json[WeightFields.lowerRange]),
    topRange: jsonDecode(json[WeightFields.topRange]),
    );

  Map<String, dynamic> toJson() => {
    WeightFields.email: email,
    WeightFields.id: id,
    WeightFields.date: date,
    WeightFields.value: value,
    WeightFields.lowerRange: lowerRange,
    WeightFields.topRange: topRange,
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
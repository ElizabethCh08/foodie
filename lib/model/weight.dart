import 'dart:convert';

class WeightFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Weight{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Weight({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Weight fromJson(Map<String, dynamic> json) => Weight(
    email: json[WeightFields.email],
    id: jsonDecode(json[WeightFields.id]),
    date: json[WeightFields.date],
    value: jsonDecode(json[WeightFields.value]),
    );

  Map<String, dynamic> toJson() => {
    WeightFields.email: email,
    WeightFields.id: id,
    WeightFields.date: date,
    WeightFields.value: value,
  };
}
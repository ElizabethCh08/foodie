import 'dart:convert';

class BodyfatFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Bodyfat{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Bodyfat({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Bodyfat fromJson(Map<String, dynamic> json) => Bodyfat(
    email: json[BodyfatFields.email],
    id: jsonDecode(json[BodyfatFields.id]),
    date: json[BodyfatFields.date],
    value: jsonDecode(json[BodyfatFields.value]),
  );

  Map<String, dynamic> toJson() => {
    BodyfatFields.email: email,
    BodyfatFields.id: id,
    BodyfatFields.date: date,
    BodyfatFields.value: value,
  };
}
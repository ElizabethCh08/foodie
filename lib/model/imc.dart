import 'dart:convert';

import 'dart:ffi';

class ImcFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Imc{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Imc({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Imc fromJson(Map<String, dynamic> json) => Imc(
    email: json[ImcFields.email],
    id: jsonDecode(json[ImcFields.id]),
    date: json[ImcFields.date],
    value: jsonDecode(json[ImcFields.value]),
    );

  Map<String, dynamic> toJson() => {
    ImcFields.email: email,
    ImcFields.id: id,
    ImcFields.date: date,
    ImcFields.value: value,
  };
}
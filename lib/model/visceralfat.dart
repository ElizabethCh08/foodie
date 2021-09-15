import 'dart:convert';

class VisceralfatFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Visceralfat{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Visceralfat({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Visceralfat fromJson(Map<String, dynamic> json) => Visceralfat(
    email: json[VisceralfatFields.email],
    id: jsonDecode(json[VisceralfatFields.id]),
    date: json[VisceralfatFields.date],
    value: jsonDecode(json[VisceralfatFields.value]),
    );

  Map<String, dynamic> toJson() => {
    VisceralfatFields.email: email,
    VisceralfatFields.id: id,
    VisceralfatFields.date: date,
    VisceralfatFields.value: value,
  };
}
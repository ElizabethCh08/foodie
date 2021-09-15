import 'dart:convert';

class WaistFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Waist{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Waist({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Waist fromJson(Map<String, dynamic> json) => Waist(
    email: json[WaistFields.email],
    id: jsonDecode(json[WaistFields.id]),
    date: json[WaistFields.date],
    value: jsonDecode(json[WaistFields.value]),
    );

  Map<String, dynamic> toJson() => {
    WaistFields.email: email,
    WaistFields.id: id,
    WaistFields.date: date,
    WaistFields.value: value,
  };
}
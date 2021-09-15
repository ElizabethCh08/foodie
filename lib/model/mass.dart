import 'dart:convert';

class MassFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String date = 'date';
  static final String value = 'value';

  static List<String> getFields() => [email, id, date, value];
}

class Mass{
  final String? email;
  final int? id;
  final String? date;
  final int? value;

  const Mass({
    this.email,
    this.id,
    this.date,
    this.value,
  });

  static Mass fromJson(Map<String, dynamic> json) => Mass(
    email: json[MassFields.email],
    id: jsonDecode(json[MassFields.id]),
    date: json[MassFields.date],
    value: jsonDecode(json[MassFields.value]),
  );

  Map<String, dynamic> toJson() => {
    MassFields.email: email,
    MassFields.id: id,
    MassFields.date: date,
    MassFields.value: value,
  };
}
import 'dart:convert';

class UserFields{
  static final String email = 'email';
  static final String id = 'id';
  static final String password = 'password';
  static final String name = 'name';
  static final String phone = 'phone';
  static final String suscription = 'suscription';
  static final String location = 'location';

  static List<String> getFields() => [email, id,  password, name, phone, suscription, location];
}

class User{
  final String email;
  final int? id;
  final String password;
  final String name;
  final String phone;
  final String suscription;
  final String location;

  const User ({
    required this.email,
    this.id,
    required this.password,
    this.name = 'Elizabeth',
    this.phone = '0999999999',
    this.suscription = 'user/admin',
    this.location = 'Dirección'
  });

  User copy({
    String? email,
    int? id,
    String? password,
    String? name,
    String? phone,
    String? suscription,
    String? location
  }) => User(
    id: id ?? this.id,
    email: email ?? this.email,
    password: password ?? this.password,
    name: name ?? this.name,
    phone: phone ?? this.phone,
    suscription: suscription ?? this.suscription,
    location: location ?? this.location,
  );

  static User fromJson(Map<String, dynamic> json) => User(
    email: json[UserFields.email],
    id: jsonDecode(json[UserFields.id]),
    password: json[UserFields.password],
    name: json[UserFields.name],
    phone: json[UserFields.phone],
    suscription: json[UserFields.suscription],
    location: json[UserFields.location],
    );

  Map<String, dynamic> toJson() => {
    UserFields.email: email,
    UserFields.id: id,
    UserFields.password: password,
    UserFields.name: name,
    UserFields.phone: phone,
    UserFields.suscription: suscription,
    UserFields.location: location
  };
}
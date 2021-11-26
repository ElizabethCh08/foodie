import 'dart:convert';

class MenuFields{
  static final String code = 'code';
  static final String date = 'date';
  static final String monday = 'monday';
  static final String tuesday = 'tuesday';
  static final String wednesday = 'wednesday';
  static final String thursday = 'thursday';
  static final String friday = 'friday';
  static final String monday2 = 'monday2';
  static final String tuesday2 = 'tuesday2';
  static final String wednesday2 = 'wednesday2';
  static final String thursday2 = 'thursday2';
  static final String friday2 = 'friday2';

  static List<String> getFields() => ['code', 'date', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday',
    'monday2', 'tuesday2', 'wednesday2', 'thursday2', 'friday2'];
}

class Menu{
  final int? code;
  final String? date;
  final String? monday;
  final String? tuesday;
  final String? wednesday;
  final String? thursday;
  final String? friday;
  final String? monday2;
  final String? tuesday2;
  final String? wednesday2;
  final String? thursday2;
  final String? friday2;

  const Menu({
    this.code,
    this.date,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.monday2,
    this.tuesday2,
    this.wednesday2,
    this.thursday2,
    this.friday2
  });

  static Menu fromJson(Map<String, dynamic> json) => Menu(
    code: jsonDecode(json[MenuFields.code]),
    date: json[MenuFields.date],
    monday: json[MenuFields.monday],
    tuesday: json[MenuFields.tuesday],
    wednesday: json[MenuFields.wednesday],
    thursday: json[MenuFields.thursday],
    friday: json[MenuFields.friday],
    monday2: json[MenuFields.monday2],
    tuesday2: json[MenuFields.tuesday2],
    wednesday2: json[MenuFields.wednesday2],
    thursday2: json[MenuFields.thursday2],
    friday2: json[MenuFields.friday2],
  );

   Map<String, dynamic> toJson() => {
     MenuFields.code: code,
     MenuFields.date: date,
     MenuFields.monday: monday,
     MenuFields.tuesday: tuesday,
     MenuFields.wednesday: wednesday,
     MenuFields.thursday: thursday,
     MenuFields.friday: friday,
     MenuFields.monday2: monday2,
     MenuFields.tuesday2: tuesday2,
     MenuFields.wednesday2: wednesday2,
     MenuFields.thursday2: thursday2,
     MenuFields.friday2: friday2,
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
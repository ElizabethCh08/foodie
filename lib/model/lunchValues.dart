class LunchFields {
  static final String email = 'email';
  static final String time = 'time';
  static final String dairy = 'dairy';
  static final String cereal = 'cereal';
  static final String protein = 'protein';
  static final String fat = 'fat';
  static final String vegetables = 'vegetables';
  static final String fruit = 'fruit';
  static final String example = 'example';

  static List<String> getFields() => ['email', 'time', 'dairy', 'cereal', 'protein', 'fat', 'vegetables', 'fruit',
  'example'];
}

class Lunch {
  final String? email;
  final String? time;
  final String? dairy;
  final String? cereal;
  final String? protein;
  final String? fat;
  final String? vegetables;
  final String? fruit;
  final String? example;

  const Lunch({
    this.email,
    this.time,
    this.dairy,
    this.cereal,
    this.protein,
    this.fat,
    this.vegetables,
    this.fruit,
    this.example
  });

  static Lunch fromJson(Map<String, dynamic> json) => Lunch(
    email: json[LunchFields.email],
    time: json[LunchFields.time],
    dairy: json[LunchFields.dairy],
    cereal: json[LunchFields.cereal],
    protein: json[LunchFields.protein],
    fat: json[LunchFields.fat],
    vegetables: json[LunchFields.vegetables],
    fruit: json[LunchFields.fruit],
    example: json[LunchFields.example],
  );

  Map<String, dynamic> toJson() => {
    LunchFields.email: email,
    LunchFields.time: time,
    LunchFields.dairy: dairy,
    LunchFields.cereal: cereal,
    LunchFields.protein: protein,
    LunchFields.fat: fat,
    LunchFields.vegetables: vegetables,
    LunchFields.fruit: fruit,
    LunchFields.example: example
  };
  
}
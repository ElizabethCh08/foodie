class DinnerFields {
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

class Dinner {
  final String? email;
  final String? time;
  final String? dairy;
  final String? cereal;
  final String? protein;
  final String? fat;
  final String? vegetables;
  final String? fruit;
  final String? example;

  const Dinner({
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

  static Dinner fromJson(Map<String, dynamic> json) => Dinner(
    email: json[DinnerFields.email],
    time: json[DinnerFields.time],
    dairy: json[DinnerFields.dairy],
    cereal: json[DinnerFields.cereal],
    protein: json[DinnerFields.protein],
    fat: json[DinnerFields.fat],
    vegetables: json[DinnerFields.vegetables],
    fruit: json[DinnerFields.fruit],
    example: json[DinnerFields.example],
  );

  Map<String, dynamic> toJson() => {
    DinnerFields.email: email,
    DinnerFields.time: time,
    DinnerFields.dairy: dairy,
    DinnerFields.cereal: cereal,
    DinnerFields.protein: protein,
    DinnerFields.fat: fat,
    DinnerFields.vegetables: vegetables,
    DinnerFields.fruit: fruit,
    DinnerFields.example: example
  };
  
}

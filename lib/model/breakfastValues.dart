class BreakfastFields {
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

class Breakfast {
  final String? email;
  final String? time;
  final String? dairy;
  final String? cereal;
  final String? protein;
  final String? fat;
  final String? vegetables;
  final String? fruit;
  final String? example;

  const Breakfast({
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

  static Breakfast fromJson(Map<String, dynamic> json) => Breakfast(
    email: json[BreakfastFields.email],
    time: json[BreakfastFields.time],
    dairy: json[BreakfastFields.dairy],
    cereal: json[BreakfastFields.cereal],
    protein: json[BreakfastFields.protein],
    fat: json[BreakfastFields.fat],
    vegetables: json[BreakfastFields.vegetables],
    fruit: json[BreakfastFields.fruit],
    example: json[BreakfastFields.example],
  );

  Map<String, dynamic> toJson() => {
    BreakfastFields.email: email,
    BreakfastFields.time: time,
    BreakfastFields.dairy: dairy,
    BreakfastFields.cereal: cereal,
    BreakfastFields.protein: protein,
    BreakfastFields.fat: fat,
    BreakfastFields.vegetables: vegetables,
    BreakfastFields.fruit: fruit,
    BreakfastFields.example: example
  };
  
}

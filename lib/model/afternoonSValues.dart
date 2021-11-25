class AfternoonSFields {
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

class AfternoonS {
  final String? email;
  final String? time;
  final String? dairy;
  final String? cereal;
  final String? protein;
  final String? fat;
  final String? vegetables;
  final String? fruit;
  final String? example;

  const AfternoonS({
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

  static AfternoonS fromJson(Map<String, dynamic> json) => AfternoonS(
    email: json[AfternoonSFields.email],
    time: json[AfternoonSFields.time],
    dairy: json[AfternoonSFields.dairy],
    cereal: json[AfternoonSFields.cereal],
    protein: json[AfternoonSFields.protein],
    fat: json[AfternoonSFields.fat],
    vegetables: json[AfternoonSFields.vegetables],
    fruit: json[AfternoonSFields.fruit],
    example: json[AfternoonSFields.example],
  );

  Map<String, dynamic> toJson() => {
    AfternoonSFields.email: email,
    AfternoonSFields.time: time,
    AfternoonSFields.dairy: dairy,
    AfternoonSFields.cereal: cereal,
    AfternoonSFields.protein: protein,
    AfternoonSFields.fat: fat,
    AfternoonSFields.vegetables: vegetables,
    AfternoonSFields.fruit: fruit,
    AfternoonSFields.example: example
  };
}


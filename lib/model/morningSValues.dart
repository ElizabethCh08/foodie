class MorningSFields {
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

class MorningS {
  final String? email;
  final String? time;
  final String? dairy;
  final String? cereal;
  final String? protein;
  final String? fat;
  final String? vegetables;
  final String? fruit;
  final String? example;

  const MorningS({
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

  static MorningS fromJson(Map<String, dynamic> json) => MorningS(
    email: json[MorningSFields.email],
    time: json[MorningSFields.time],
    dairy: json[MorningSFields.dairy],
    cereal: json[MorningSFields.cereal],
    protein: json[MorningSFields.protein],
    fat: json[MorningSFields.fat],
    vegetables: json[MorningSFields.vegetables],
    fruit: json[MorningSFields.fruit],
    example: json[MorningSFields.example],
  );

  Map<String, dynamic> toJson() => {
    MorningSFields.email: email,
    MorningSFields.time: time,
    MorningSFields.dairy: dairy,
    MorningSFields.cereal: cereal,
    MorningSFields.protein: protein,
    MorningSFields.fat: fat,
    MorningSFields.vegetables: vegetables,
    MorningSFields.fruit: fruit,
    MorningSFields.example: example
  };
}


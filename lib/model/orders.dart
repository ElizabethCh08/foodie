class OrdersFields{
  static final String email = 'email';
  static final String date = 'date';
  //monday
  static final String snackML = 'snackML';
  static final String lunchL = 'lunchL';
  static final String snackTL = 'snackTL'; 
  //tuesday
  static final String snackMM = 'snackMM';
  static final String lunchM = 'lunchM';
  static final String snackTM = 'snackTM'; 
  //wednesday
  static final String snackMMi = 'snackMMi';
  static final String lunchMi = 'lunchMi';
  static final String snackTMi = 'snackTMi';
  //thursday
  static final String snackMJ = 'snackMJ';
  static final String lunchJ = 'lunchJ';
  static final String snackTJ = 'snackTJ';
  //friday
  static final String snackMV = 'snackMV';
  static final String lunchV = 'lunchV';
  static final String snackTV = 'snackTV';

   static List<String> getFields() => ['email', 'date','snackML', 'lunchL', 'snackTL', 'snackMM', 'lunchM', 'snackTM', 'snackMMi',
   'lunchMi', 'snackTMi', 'snackMJ', 'lunchJ', 'snackTJ', 'snackMV', 'lunchV', 'snackTV' ];
}

class Orders {
  final String? email;
  final String? date;
  final String? snackML;
  final String? lunchL;
  final String? snackTL;
  final String? snackMM;
  final String? lunchM;
  final String? snackTM;
  final String? snackMMi;
  final String? lunchMi;
  final String? snackTMi;
  final String? snackMJ;
  final String? lunchJ;
  final String? snackTJ;
  final String? snackMV;
  final String? lunchV;
  final String? snackTV;

  const Orders({
    this.email,
    this.date,
    this.snackML,
    this.lunchL,
    this.snackTL,
    this.snackMM,
    this.lunchM,
    this.snackTM,
    this.snackMMi,
    this.lunchMi,
    this.snackTMi,
    this.snackMJ,
    this.lunchJ,
    this.snackTJ,
    this.snackMV,
    this.lunchV,
    this.snackTV
  });

  static Orders fromJson(Map<String, dynamic> json) => Orders(
    email: json[OrdersFields.email],
    date: json[OrdersFields.date],
    snackML: json[OrdersFields.snackML],
    lunchL: json[OrdersFields.lunchL],
    snackTL: json[OrdersFields.snackTL],
    snackMM: json[OrdersFields.snackMM],
    lunchM: json[OrdersFields.lunchM],
    snackTM: json[OrdersFields.snackTM],
    snackMMi: json[OrdersFields.snackMMi],
    lunchMi: json[OrdersFields.lunchMi],
    snackTMi: json[OrdersFields.snackTMi],
    snackMJ: json[OrdersFields.snackMJ],
    lunchJ: json[OrdersFields.lunchJ],
    snackTJ: json[OrdersFields.snackTJ],
    snackMV: json[OrdersFields.snackMV],
    lunchV: json[OrdersFields.lunchV],
    snackTV: json[OrdersFields.snackTV],
  );

  Map<String, dynamic> toJson() => {
    OrdersFields.email: email,
    OrdersFields.date: date,
    OrdersFields.snackML: snackML,
    OrdersFields.lunchL: lunchL,
    OrdersFields.snackTL: snackTL,
    OrdersFields.snackMM: snackMM,
    OrdersFields.lunchM: lunchM,
    OrdersFields.snackTM: snackTM,
    OrdersFields.snackMMi: snackMMi,
    OrdersFields.lunchMi: lunchMi,
    OrdersFields.snackTMi: snackTMi,
    OrdersFields.snackMJ: snackMJ,
    OrdersFields.lunchJ: lunchJ,
    OrdersFields.snackTJ: snackTJ,
    OrdersFields.snackMV: snackMV,
    OrdersFields.lunchV: lunchV,
    OrdersFields.snackTV: snackTV,
  };

  
  
}
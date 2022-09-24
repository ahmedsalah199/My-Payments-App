class PaymentTokenModel {
  final String? token;

  PaymentTokenModel({
    required this.token,
  });

  factory PaymentTokenModel.fromJson(Map<String, dynamic> json) =>
      PaymentTokenModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

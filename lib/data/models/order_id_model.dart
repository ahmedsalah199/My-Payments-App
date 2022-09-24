class OrderIdModel {
  final int? id;
  final bool? deliveryNeeded;
  final int? amountCents;
  final String? currency;
  final List<dynamic>? items;

  OrderIdModel({
    required this.id,
    required this.deliveryNeeded,
    required this.amountCents,
    required this.currency,
    required this.items,
  });

  factory OrderIdModel.fromJson(Map<String, dynamic> json) {
    return OrderIdModel(
      id: json['id'],
      deliveryNeeded: json['delivery_needed'],
      amountCents: json['amount_cents'],
      currency: json['currency'],
      items: json['items'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['delivery_needed'] = deliveryNeeded;
    data['amount_cents'] = amountCents;
    data['currency'] = currency;
    data['items'] = items;
    return data;
  }
}

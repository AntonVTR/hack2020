import 'dart:convert';

class OrderList {
  final String id;
  String shopName;
  int numbersOfOrders;
  int validHours;
  int validUntilNumber;
  String createdByUserName;
  String createdDateTime;
  OrderList({
    this.id,
    this.shopName,
    this.numbersOfOrders,
    this.validHours,
    this.validUntilNumber,
    this.createdByUserName,
    this.createdDateTime,
  });

  OrderList copyWith({
    String id,
    String shopName,
    int numbersOfOrders,
    int validHours,
    int validUntilNumber,
    String createdByUserName,
    DateTime created,
  }) {
    return OrderList(
      id: id ?? this.id,
      shopName: shopName ?? this.shopName,
      numbersOfOrders: numbersOfOrders ?? this.numbersOfOrders,
      validHours: validHours ?? this.validHours,
      validUntilNumber: validUntilNumber ?? this.validUntilNumber,
      createdByUserName: createdByUserName ?? this.createdByUserName,
      createdDateTime: created ?? this.createdDateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'shopName': shopName,
      'numbersOfOrders': numbersOfOrders,
      'validHours': validHours,
      'validUntilNumber': validUntilNumber,
      'createdByUserName': createdByUserName,
      'createdDateTime': createdDateTime,
    };
  }

  factory OrderList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return OrderList(
      id: map['id'],
      shopName: map['shopName'],
      numbersOfOrders: map['numbersOfOrders'],
      validHours: map['validHours'],
      validUntilNumber: map['validUntilNumber'],
      createdByUserName: map['createdByUserName'],
      createdDateTime: (map['createdDateTime']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderList.fromJson(String source) =>
      OrderList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderList(id: $id, shopName: $shopName, numbersOfOrders: $numbersOfOrders, validHours: $validHours, validUntilNumber: $validUntilNumber, createdByUserName: $createdByUserName, created: $createdDateTime)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OrderList &&
        o.id == id &&
        o.shopName == shopName &&
        o.numbersOfOrders == numbersOfOrders &&
        o.validHours == validHours &&
        o.validUntilNumber == validUntilNumber &&
        o.createdByUserName == createdByUserName &&
        o.createdDateTime == createdDateTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        shopName.hashCode ^
        numbersOfOrders.hashCode ^
        validHours.hashCode ^
        validUntilNumber.hashCode ^
        createdByUserName.hashCode ^
        createdDateTime.hashCode;
  }
}

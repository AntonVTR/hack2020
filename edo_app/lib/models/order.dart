import 'dart:convert';

import 'package:edo_app/models/shop.dart';
import 'package:edo_app/models/user.dart';

class Order {
  final String id;
  User user;
  Order({
    this.id,
    this.user,
  });

  Order copyWith({
    String id,
    User user,
  }) {
    return Order(
      id: id ?? this.id,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user?.toMap(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Order(
      id: map['id'],
      user: User.fromMap(map['user']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() => 'Order(id: $id, user: $user)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Order && o.id == id && o.user == user;
  }

  @override
  int get hashCode => id.hashCode ^ user.hashCode;
}

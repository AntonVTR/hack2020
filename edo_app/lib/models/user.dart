import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String phone;
  final String email;
  User({
    this.id,
    this.fullName,
    this.phone,
    this.email,
  });

  User copyWith({
    String id,
    String fullName,
    String phone,
    String email,
  }) {
    return User(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'phone': phone,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      id: map['id'],
      fullName: map['fullName'],
      phone: map['phone'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User &&
        o.id == id &&
        o.fullName == fullName &&
        o.phone == phone &&
        o.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^ fullName.hashCode ^ phone.hashCode ^ email.hashCode;
  }
}

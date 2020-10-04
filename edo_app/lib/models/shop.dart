import 'dart:convert';

class Shop {
  final String id;
  final String address;
  final String phone;
  final String website;
  final String name;
  Shop({
    this.id,
    this.address,
    this.phone,
    this.website,
    this.name,
  });

  Shop copyWith({
    String id,
    String address,
    String phone,
    String website,
    String name,
  }) {
    return Shop(
      id: id ?? this.id,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'address': address,
      'phone': phone,
      'website': website,
      'name': name,
    };
  }

  factory Shop.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Shop(
      id: map['id'],
      address: map['address'],
      phone: map['phone'],
      website: map['website'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Shop.fromJson(String source) => Shop.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shop(id: $id, address: $address, phone: $phone, website: $website, name: $name)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Shop &&
        o.id == id &&
        o.address == address &&
        o.phone == phone &&
        o.website == website &&
        o.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        address.hashCode ^
        phone.hashCode ^
        website.hashCode ^
        name.hashCode;
  }
}

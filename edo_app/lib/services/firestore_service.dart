import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edo_app/models/order_list.dart';
import 'package:edo_app/models/user.dart';
import 'package:flutter/services.dart';

class FirestoreService {
  //collection reference
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('user');
  final CollectionReference _ordersCollection =
      FirebaseFirestore.instance.collection('orders');
  final StreamController<List<OrderList>> _ordersControler =
      StreamController<List<OrderList>>.broadcast();

  Future createUserM(User user) async {
    try {
      await _userCollection.doc(user.id).set(user.toMap());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }

  Stream listenToOrdersRealTime() {
    _ordersCollection.snapshots().listen((ordersSnapshot) {
      if (ordersSnapshot.docs.isNotEmpty) {
        var order = ordersSnapshot.docs
            .map((snapshot) => OrderList.fromMap(snapshot.data()))
            .where((mappedItem) => mappedItem.id != null)
            .toList();
        order.sort((m, m2) => m.shopName.compareTo(m2.shopName));

        _ordersControler.add(order);
      }
    });
    return _ordersControler.stream;
  }

  listenToOrdersInProgressRealTime() {}

  Future createOrder(OrderList orderList) async {
    try {
      await _ordersCollection.doc(orderList.id).set(orderList.toMap());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }

      return e.toString();
    }
  }
}

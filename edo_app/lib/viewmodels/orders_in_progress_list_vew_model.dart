import 'package:edo_app/models/order_list.dart';
import 'package:edo_app/services/firestore_service.dart';
import 'package:edo_app/services/navigation_service.dart';
import 'package:edo_app/ui/common/routing_constants.dart';
import 'package:flutter/material.dart';

import '../locator.dart';
import 'base_model.dart';

class OrdersInProgressListViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final FirestoreService _firestoreService = locator<FirestoreService>();

  List<OrderList> _orders;
  List<OrderList> get orders => _orders;
  final BuildContext context;
  OrdersInProgressListViewModel(this.context);

  void listenToOrders() {
    setBusy(true);
    _firestoreService
        .listenToOrdersInProgressRealTime()
        .listen((usersListData) {
      List<OrderList> ordersList = usersListData;
      if (ordersList != null) {
        _orders = ordersList;
        notifyListeners();
      }
    });
    setBusy(false);
  }

  void navigateToShoppingScreen() =>
      _navigationService.navigateTo(OrderInProgressDetail);
}

import 'package:edo_app/models/order_list.dart';
import 'package:edo_app/services/firestore_service.dart';
import 'package:edo_app/services/navigation_service.dart';
import 'package:edo_app/ui/common/routing_constants.dart';
import 'package:flutter/material.dart';

import '../locator.dart';
import 'base_model.dart';

class OrdersListViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final FirestoreService _firestoreService = locator<FirestoreService>();

  List<OrderList> _orders;
  List<OrderList> get orders => _orders;
  final BuildContext context;
  OrdersListViewModel(this.context);

  Future<void> listenToOrders() async {
    setBusy(true);
    await _firestoreService.listenToOrdersRealTime().listen((ordersListData) {
      List<OrderList> ordersList = ordersListData;
      if (ordersList != null) {
        _orders = ordersList;
        notifyListeners();
      }
    });
    setBusy(false);
  }

  void navigateToJoinToOrder(String role) =>
      _navigationService.navigateTo(JoinToOrder, arguments: orders);
  void navigateToNewOrderScreen() =>
      _navigationService.navigateTo(CreateNewOrderViewRoute);
}

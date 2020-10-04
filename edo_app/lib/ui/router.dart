import 'package:edo_app/ui/common/routing_constants.dart';
import 'package:edo_app/ui/views/create_new_order.dart';
import 'package:edo_app/ui/views/delivery_list/delivery_list.dart';
import 'package:edo_app/ui/views/role_select.dart';
import 'package:flutter/material.dart';

import 'views/orders_view/orders_list.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoleSelectViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: RoleSelectView(),
      );
    case HomeScreenOrderViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: OrdersList(),
      );
    case HomeScreenDeliveryViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: DeliveryList(),
      );
    case CreateNewOrderViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: CreateNewOrder(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}

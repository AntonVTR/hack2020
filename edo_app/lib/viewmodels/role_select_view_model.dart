import 'package:edo_app/services/navigation_service.dart';
import 'package:edo_app/ui/common/routing_constants.dart';

import '../locator.dart';
import 'base_model.dart';

class CreateNewOrder extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToShoppingScreen() =>
      _navigationService.navigateTo(HomeScreenOrderViewRoute);
  void navigateToDeliveryScreen() =>
      _navigationService.navigateTo(HomeScreenOrderViewRoute);
}

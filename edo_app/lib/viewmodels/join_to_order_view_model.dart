import 'package:edo_app/models/order_list.dart';
import 'package:edo_app/services/dialog_service.dart';
import 'package:edo_app/services/firestore_service.dart';
import 'package:edo_app/services/navigation_service.dart';
import 'package:edo_app/ui/common/global_var.dart';
import 'package:edo_app/ui/common/routing_constants.dart';
import 'package:uuid/uuid.dart';

import '../locator.dart';
import 'base_model.dart';

class CreateNewOrderViewModel extends BaseModel {
  final FirestoreService _firestoreService = locator<FirestoreService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();

  Future createOrder(String shopName, String delivery,
      String paymentForDelivery, int validHours, int totalOrders) async {
    var result = await _firestoreService.createOrder(OrderList(
        id: Uuid().v4(),
        shopName: shopName,
        validHours: validHours,
        validUntilNumber: totalOrders,
        createdDateTime: DateTime.now().toString(),
        numbersOfOrders: 1,
        createdByUserName: userName));

    if (result is String) {
      await _dialogService.showDialog(
          title: "Заказ не может быть создан", description: result);
    } else {
      await _dialogService.showDialog(
        title: "Успешно",
        description: "Ваш заказ успешно создан",
      );
      _navigationService.pop();
    }
  }
}

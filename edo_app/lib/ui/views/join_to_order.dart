import 'package:edo_app/ui/common/global_var.dart';
import 'package:edo_app/ui/shared/ui_helpers.dart';
import 'package:edo_app/ui/widgets/input_field.dart';
import 'package:edo_app/viewmodels/create_new_order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class JoinToOrderView extends StatelessWidget {
  const JoinToOrderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderIdController = TextEditingController();

    return ViewModelProvider<JoinToOrderViewModel>.withConsumer(
        viewModelBuilder: () => JoinToOrderViewModel(),
        builder: (context, model, child) => MaterialApp(
              home: Scaffold(
                body: ListView(children: <Widget>[
                  verticalSpaceSmall,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Номер заказа",
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  InputField(
                    controller: orderIdController,
                    placeholder: "Номер заказа",
                    textInputType: TextInputType.number,
                  ),
                  FlatButton(
                      onPressed: () => {
                            model.createOrder(
                                shopNameController.text,
                                enumValueToString(
                                    delivery.values[_valueDelivery]),
                                enumValueToString(paymentForDelivery
                                    .values[_valuePaymentForDelivery]),
                                int.parse(validHoursController.text),
                                int.parse(validOrdersController.text)),
                          },
                      child: Text("Создать"),
                      key: Key("create")),
                ]),
              ),
            ));
  }
}

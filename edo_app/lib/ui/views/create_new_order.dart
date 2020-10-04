import 'package:edo_app/ui/common/global_var.dart';
import 'package:edo_app/ui/shared/ui_helpers.dart';
import 'package:edo_app/ui/widgets/input_field.dart';
import 'package:edo_app/viewmodels/create_new_order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class CreateNewOrder extends StatefulWidget {
  @override
  _CreateNewOrderState createState() => _CreateNewOrderState();
}

class _CreateNewOrderState extends State<CreateNewOrder> {
  final shopNameController = TextEditingController();
  final orderIdController = TextEditingController();
  final validHoursController = TextEditingController();
  final validOrdersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int _valueDelivery = 1;
    int _valuePaymentForDelivery = 1;
    return ViewModelProvider<CreateNewOrderViewModel>.withConsumer(
        viewModelBuilder: () => CreateNewOrderViewModel(),
        builder: (context, model, child) => MaterialApp(
              home: Scaffold(
                body: ListView(children: <Widget>[
                  verticalSpaceSmall,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Введите название магазина",
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  InputField(
                    controller: shopNameController,
                    placeholder: "Название",
                    textInputType: TextInputType.name,
                  ),
                  verticalSpaceSmall,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Тип доставки",
                      ),
                    ),
                  ),
                  DropdownButton(
                      value: _valueDelivery,
                      items: [
                        DropdownMenuItem(
                          child: Text(enumValueToString(delivery.personal)),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(enumValueToString(delivery.taxi)),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(enumValueToString(delivery.shop)),
                            value: 3),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _valueDelivery = value;
                        });
                      }),
                  verticalSpaceSmall,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Как оплачивать доставку",
                      ),
                    ),
                  ),
                  DropdownButton(
                      value: _valuePaymentForDelivery,
                      items: [
                        DropdownMenuItem(
                          child:
                              Text(enumValueToString(paymentForDelivery.equl)),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(enumValueToString(
                              paymentForDelivery.proportional)),
                          value: 2,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _valuePaymentForDelivery = value;
                        });
                      }),
                  verticalSpaceMedium,
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
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Завершится",
                      ),
                    ),
                  ),
                  Text(
                    "Через",
                  ),
                  InputField(
                    controller: validHoursController,
                    placeholder: "Часов",
                    textInputType: TextInputType.number,
                  ),
                  Text(
                    "Когда будет",
                  ),
                  InputField(
                    controller: validOrdersController,
                    placeholder: "Заказов",
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

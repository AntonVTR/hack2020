import 'package:edo_app/ui/common/global_var.dart';
import 'package:edo_app/ui/shared/ui_helpers.dart';
import 'package:edo_app/ui/widgets/input_field.dart';
import 'package:edo_app/viewmodels/role_select_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RoleSelectView extends StatelessWidget {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<CreateNewOrder>.withConsumer(
        viewModelBuilder: () => CreateNewOrder(),
        builder: (context, model, child) => MaterialApp(
              home: Scaffold(
                body: ListView(children: <Widget>[
                  verticalSpaceMassive,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Введите имя",
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  InputField(
                      controller: nameController,
                      placeholder: "Имя",
                      textInputType: TextInputType.name,
                      key: Key('textFormEmail')),
                  verticalSpaceLarge,
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Вы хотите",
                      ),
                    ),
                  ),
                  verticalSpaceLarge,
                  FlatButton(
                      onPressed: () => {
                            model.navigateToShoppingScreen(),
                            userName = nameController.text
                          },
                      child: Text("Купить?"),
                      key: Key("buyer")),
                  FlatButton(
                      onPressed: () => model.navigateToDeliveryScreen(),
                      child: Text("Доставить?"),
                      key: Key("sv")),
                ]),
              ),
            ));
  }
}

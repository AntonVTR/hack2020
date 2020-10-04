import 'package:edo_app/ui/common/global_var.dart';
import 'package:edo_app/ui/shared/ui_helpers.dart';
import 'package:edo_app/ui/views/orders_view/order_items.dart';
import 'package:edo_app/viewmodels/orders_list_vew_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';
import 'package:provider_architecture/provider_architecture.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<OrdersListViewModel>.withConsumer(
        viewModelBuilder: () => OrdersListViewModel(context),
        onModelReady: (model) => model.listenToOrders(),
        builder: (context, model, child) => MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  title: Text(
                    "Активные заказы для ${userName}",
                  ),
                  key: Key('title'),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: !model.busy
                      ? Icon(Icons.add)
                      : CircularProgressIndicator(),
                  onPressed: model.navigateToNewOrderScreen,
                ),
                backgroundColor: Colors.white,
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      verticalSpace(35),
                      Row(),
                      Expanded(
                          child: model.orders != null
                              ? ListView.builder(
                                  itemCount: model.orders.length,
                                  itemBuilder: (context, index) => OrderItems(
                                      orderList: model.orders[index],
                                      onItemClicked: () {
                                        print(
                                            "${model.orders[index]} was clicked");
                                      }),
                                )
                              : Center(
                                  child: Text(
                                  "Пусто",
                                ))),
                    ],
                  ),
                ),
              ),
            ));
  }
}

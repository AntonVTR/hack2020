import 'package:edo_app/models/order_list.dart';
import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  final OrderList orderList;
  final Function onItemClicked;

  const OrderItems({
    Key key,
    this.orderList,
    this.onItemClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var validMs = Duration(hours: orderList.validHours);
    var leftTime;
    if (validMs != 0) {
      leftTime = DateTime.now()
          .difference(DateTime.parse(orderList.createdDateTime).add(validMs))
          .inMinutes;
      if (leftTime > 60) {
        leftTime = DateTime.now()
                .difference(
                    DateTime.parse(orderList.createdDateTime).add(validMs))
                .inHours
                .toString() +
            "ч";
      } else {
        leftTime = leftTime.toString() + " мин";
      }
    }

    return GestureDetector(
      onTap: () {
        onItemClicked();
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("магазин " +
                    orderList.shopName +
                    "/создан " +
                    orderList.createdByUserName +
                    "/goal " +
                    orderList.validUntilNumber.toString()),
              )),
            ]),
            Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("заказов " +
                      orderList.numbersOfOrders.toString() +
                      "; left " +
                      leftTime),
                )),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(blurRadius: 8, color: Colors.grey[200], spreadRadius: 3)
            ]),
      ),
    );
  }
}

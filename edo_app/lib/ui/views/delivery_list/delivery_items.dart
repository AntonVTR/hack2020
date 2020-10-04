import 'package:edo_app/models/order_list.dart';
import 'package:flutter/material.dart';

class DeliveryItems extends StatelessWidget {
  final OrderList orderList;
  const DeliveryItems({
    Key key,
    this.orderList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(orderList.id + orderList.shopName),
            )),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
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

import 'package:ecommerce_features/order_tabs/my_order_item.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(

            children: [
              ListView.builder(itemBuilder: (buildContext,index){

                return const Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    child: MyOrderItem()
                );
              },
                itemCount: 5,
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        )
    );
  }
}

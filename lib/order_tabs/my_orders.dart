import 'package:ecommerce_features/order_tabs/my_order_item.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  int orderPlaced = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(

            children: [

              Padding(
                padding:const EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("$orderPlaced Order"
                    ,style: const TextStyle(
                        color: Colors.black54,
                          fontFamily: 'Righteous'
                      ),),

                    const Text("Apr 23, 2022, 05:06 PM"
                      ,style: TextStyle(
                          color: Colors.black54,
                        fontFamily: 'Righteous'
                      ),)
                  ],
                ),
              ),

              ListView.builder(itemBuilder: (buildContext,index){

                return const Card(
                  shadowColor: Colors.black54,
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

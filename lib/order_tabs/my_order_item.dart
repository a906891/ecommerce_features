import 'package:flutter/material.dart';

class MyOrderItem extends StatefulWidget {
  const MyOrderItem({Key? key}) : super(key: key);

  @override
  State<MyOrderItem> createState() => _MyOrderItemState();
}

class _MyOrderItemState extends State<MyOrderItem> {
  String? nameOfItem = "Monthly Pass";
  int? amountOfItem = 29;
  String? preparedBy = "LRNR.in";
  String? imageOfItem = "images/monthlypass.png";

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [

              ClipRRect(
                child: Image.asset(imageOfItem!,
                  height: 170.0),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),

              const SizedBox(width: 10.0,),

            ],
          ),

          const SizedBox(height: 20.0,),

          Row(
            children: [
              const SizedBox(width: 40.0,),
              Text(nameOfItem!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
            ],
          ),

          const SizedBox(height: 40.0,),

          Row(
            children: [
              const SizedBox(width: 40.0,),
              Text("Rs $amountOfItem",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),),
            ],
          ),
          const SizedBox(height: 20.0,),

        ]);
  }
}

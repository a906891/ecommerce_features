import 'package:ecommerce_features/cart_tabs/cart_item.dart';
import 'package:ecommerce_features/wishlist_tabs/wishlist_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({Key? key}) : super(key: key);

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  int totalAmount = 438;
  int quantity = 2;

  List<String> imageslist = [
    "images/2.png",
    "images/3.png",
    "images/download.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
//My Cart items
              Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Cart items (3)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total: Rs.$totalAmount",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ]),

//List of items in cart

              ListView.builder(
                itemBuilder: (buildContext, index) {
                  return const Card(
                    child:  Padding(
                      padding: EdgeInsets.fromLTRB(15.0,15.0,10.0,0),
                      child: CartItem(),
                    ),
                  );
                },
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),

              const SizedBox(
                height: 30.0,
              ),
//Price details
              Row(
                children: const [
                  Text(
                    "PRICE DETAILS (5 item)",
                  ),
                ],
              ),

              const SizedBox(height: 15.0),

//Total Mrp
              Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total MRP",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. $totalAmount",
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ]),

              const SizedBox(height: 10.0),
//Total Qty
              Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Qty",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("$quantity",
                          style: const TextStyle(color: Colors.black54))
                    ],
                  ),
                ),
              ]),

              const SizedBox(height: 10.0),
//Coupon Discount
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Coupon Discount",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),

              const SizedBox(height: 10.0),
//Convenience Fee
              Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Convenience Fee",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("Free", style: TextStyle(color: Colors.green))
                    ],
                  ),
                ),
              ]),

              const SizedBox(height: 10.0),
//Total Amount
              Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Rs $totalAmount",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ]),

              const SizedBox(height: 30.0),
//Place order
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "PLACE ORDER",
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: const EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              const Text("Contact Us")
            ],
          ),
        ),
      ),
    );
  }
}

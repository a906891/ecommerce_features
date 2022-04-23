import 'package:flutter/material.dart';

class WishListItem extends StatefulWidget {
  const WishListItem({Key? key}) : super(key: key);

  @override
  State<WishListItem> createState() => _WishListItemState();
}

class _WishListItemState extends State<WishListItem> {
  String? nameOfItem = "Monthly Pass";
  int? amountOfItem = 29;
  String? preparedBy = "LRNR.in";
  String? imageOfItem = "images/monthlypass.png";


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [

              ClipRRect(
                child: Image.asset(imageOfItem!,
                  height: 80.0,),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),

              const SizedBox(width: 10.0,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nameOfItem!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold
                    ),),

                  const SizedBox(height: 5.0,),

                  Text("Rs $amountOfItem",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold
                    ),),

                  const SizedBox(height: 5.0,),

                  Text("Prepared by: $preparedBy",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),),
                ],
              )

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [


              TextButton(
                onPressed: () {

                },
                child:const Text("REMOVE FROM WISHLIST",
                  style: TextStyle(
                      color: Colors.black54
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}

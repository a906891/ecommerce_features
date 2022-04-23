import 'package:flutter/material.dart';

class WishListItem extends StatefulWidget {
  const WishListItem({Key? key}) : super(key: key);

  @override
  State<WishListItem> createState() => _WishListItemState();
}

class _WishListItemState extends State<WishListItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [

              ClipRRect(
                child: Image.asset("images/monthlypass.png",
                  height: 80.0,),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),

              const SizedBox(width: 10.0,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Monthly Pass",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),

                  SizedBox(height: 5.0,),

                  Text("Rs 29",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),

                  SizedBox(height: 5.0,),

                  Text("Prepared by: LRNR.in",
                    style: TextStyle(
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

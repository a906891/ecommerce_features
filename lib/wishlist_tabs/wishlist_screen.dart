import 'package:ecommerce_features/wishlist_tabs/wishlist_item.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext,index){

        return const Card(

          child: Padding(
              padding: EdgeInsets.fromLTRB(15.0,15.0,10.0,0),
              child: WishListItem())
        );
      },
      itemCount: 5,
      )
    );
  }
}

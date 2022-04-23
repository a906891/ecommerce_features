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
          child: ListTile(
            title: Text("Abhiraj Singh"),
          ),
        );
      },
      itemCount: 5,
      )
    );
  }
}

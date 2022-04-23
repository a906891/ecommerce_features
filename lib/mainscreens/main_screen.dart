
import 'package:ecommerce_features/cart_tabs/cart_screen.dart';
import 'package:ecommerce_features/wishlist_tabs/wishlist_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          WishList(),
          Cart_Screen(),
          WishList(),
          Cart_Screen()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_rate), label: "Ratings"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}

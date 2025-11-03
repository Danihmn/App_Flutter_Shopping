import 'package:app_flutter_shopping/pages/cart_page.dart';
import 'package:app_flutter_shopping/pages/home_page.dart';
import 'package:app_flutter_shopping/pages/login_page.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [HomePage(), CartPage(), LoginPage()]),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: "Home"),
          Tab(icon: Icon(Icons.shopping_cart), text: "Cart"),
          Tab(icon: Icon(Icons.person), text: "Login"),
        ],
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.green,
      ),
    );
  }
}

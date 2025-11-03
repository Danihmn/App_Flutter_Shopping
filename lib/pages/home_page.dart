import 'package:app_flutter_shopping/widgets/category/category_list_widget.dart';
import 'package:app_flutter_shopping/widgets/products/product_card_item_widget.dart';
import 'package:app_flutter_shopping/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60),
            SearchBoxWidget(),
            SizedBox(height: 30),
            Text("Categories", style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            SizedBox(height: 90, child: CategoryListWidget()),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Best Selling", style: TextStyle(fontSize: 25)),
                TextButton(onPressed: () {}, child: Text("See all")),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(height: 350, child: productList(context)),
          ],
        ),
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    children: const [
      ProductCardItemWidget(
        title: "Nike Dry-Fit Long Sleeve",
        brand: "Nike",
        price: 200,
        image: "assets/product-10.png",
      ),
    ],
  );
}

import 'package:app_flutter_shopping/widgets/category/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(), // opcional, para rolagem suave
        children: [
          CategoryItemWidget(image: "assets/Icon_Devices.png"),
          CategoryItemWidget(image: "assets/Icon_Gadgets.png"),
          CategoryItemWidget(image: "assets/Icon_Devices.png"),
          CategoryItemWidget(image: "assets/Icon_Gaming.png"),
          CategoryItemWidget(image: "assets/Icon_Mens_Shoe.png"),
          CategoryItemWidget(image: "assets/Icon_Womens_Shoe.png"),
        ],
      ),
    );
  }
}

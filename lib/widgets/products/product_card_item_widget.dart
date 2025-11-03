import 'package:app_flutter_shopping/pages/product_page.dart';
import 'package:flutter/material.dart';

class ProductCardItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final double price;

  const ProductCardItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.brand,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    image: image,
                    title: title,
                    brand: brand,
                    price: price,
                  ),
                ),
              );
            },
            child: Image.asset(
              image,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          Text(
            brand,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 5),
          Text("\$ $price", style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}

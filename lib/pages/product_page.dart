import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Color(0xFFFFFFFF),
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset("assets/product-10.png"),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 10, left: 10, right: 10),
              child: Text(
                "Dry Fitr Long Sleeve",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text("by Nike"),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(
                "Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(
                "Nike Dri-Fit is a poliester fabric designed to help you keep dry so you can more comfortably work harder, longer",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

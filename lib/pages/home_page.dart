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
            search(),
            SizedBox(height: 30),
            Text("Categories", style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            SizedBox(height: 90, child: categoryList()),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Color(0x10000000),
      borderRadius: BorderRadius.circular(128),
    ),
    child: Row(
      children: [
        SizedBox(width: 10),
        Icon(Icons.search),
        SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Search",
              labelStyle: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return SizedBox(
    height: 90,
    child: ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(), // opcional, para rolagem suave
      children: [
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    height: 70,
    width: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(64)),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/sHops.dart';
import 'package:food_order/widget.dart';
import 'shopsData.dart' show shopsData;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const title = 'Food Order';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: sHopsListPage());
  }
}

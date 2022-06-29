import 'package:flutter/material.dart';
import 'package:food_order/models/sHops.dart';
import 'package:food_order/screens/shop_screen.dart';
import '../main.dart';
import '../shopsData.dart' show shopsData;

class ShopListScreen extends StatelessWidget {
  List shops = shopsData.getMockedsHops();

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: shops.length,
                  itemBuilder: (
                    BuildContext ctx,
                    int index,
                  ) {
                    return Container(
                        margin: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushNamed(ShopScreen.routename),
                            child: Image.asset(
                                'assets/images/${shops[index].imgName.toString()}.png',
                                fit: BoxFit.cover),
                          ),
                        ));
                  }),
            ),
          ],
        ));
  }
}

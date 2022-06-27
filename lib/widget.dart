import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/sHops.dart';
import 'shopsData.dart' show shopsData;

class sHopsListPage extends StatelessWidget {
  List<sHops> catogeries = shopsData.getMockedsHops();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                'shop list page',
                style: TextStyle(color: Colors.black),
              ), //TEXT
            ), // padding
            Expanded(
              child: ListView.builder(
                  itemCount: catogeries.length,
                  itemBuilder: (
                    BuildContext ctx,
                    int index,
                  ) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      child: Stack(
                        Positioned.fill(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                              'assets/images' +
                                  catogeries[index].imgName.toString() +
                                  '.png',
                              fit: BoxFit.cover), //child
                        ), //fill
                      ), // stack
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight:
                                  Radius.circular(20)), // border radius

                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ] // colors
                              ), // LinearGradient
                        ), // boxdecoration
                      ), //container
                    ); //conatainer
                    Positioned(
                      bottom: 0,

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              catogeries[index].name.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ), // teststyle
                            ), // text
                          ], // children
                        ), // row
                      ), // padding
                    ); // positioned
                  } // item builder,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

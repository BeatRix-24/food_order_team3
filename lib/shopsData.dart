import 'package:food_order/sHops.dart';

class shopsData {
  static List getMockedsHops() {
    return [
      sHops(
          //color: Appcolors.SHOP1,
          name: 'SHOP 1',
          workingHours: "9:30 - 4:30",
          imgName: "shop1",
          categories: []),
      sHops(
          //color: Appcolors.SHOP2,
          name: 'SHOP 2',
          workingHours: "9:30 - 4:30",
          imgName: "shop2",
          categories: []),
      sHops(
          //color: Appcolors.SHOP3,
          name: 'SHOP 3',
          workingHours: "9:30 - 4:30",
          imgName: "shop3",
          categories: []),
      sHops(
          //color: Appcolors.SHOP4,
          name: 'SHOP 4',
          workingHours: "9:30 - 4:30",
          imgName: "shop4",
          categories: []),
    ];
  }
}

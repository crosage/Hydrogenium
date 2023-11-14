import 'package:arknights_offline_helper/components/operator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> imagePaths=[
  'assets/麒麟夜刀.jpg',
  'assets/菲亚梅塔.jpg',
  'assets/杰西卡.jpg',
  'assets/寒芒克洛斯.jpg',
  'assets/格拉尼.jpg',
  'assets/远牙.jpg',
  'assets/陈.jpg',
  'assets/老鲤.jpg',
  'assets/凯尔希.jpg',
  'assets/M3.jpg',
  'assets/拉普兰德.jpg',
  'assets/凛冬.jpg',
  'assets/赫拉格.jpg',
  'assets/秦柳.jpg',
  'assets/极境.jpg',
  'assets/艾雅法拉.jpg',
  'assets/重岳.jpg',
  'assets/蛇屠箱.jpg',
  'assets/林雨霞.jpg',
  'assets/梓兰.jpg',
  'assets/SP水月.jpg',
  'assets/安塞尔.jpg',
  'assets/冰酿.jpg',
  'assets/德克萨斯.jpg',
  'assets/号角.jpg',
  'assets/桃金娘.jpg',
  'assets/能天使.jpg',
  'assets/克俄柏.jpg',
  'assets/焰影苇草.jpg',
  'assets/提丰.jpg',
];
class LibPage extends StatefulWidget {
  @override
  _LibPageState createState() => _LibPageState();
}

class _LibPageState extends State<LibPage> {
  List<String> paths = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
        children:[Wrap(
        children: List.generate(
          imagePaths.length,
              (index) {
            return Operator(
              img: imagePaths[index],
              height: 300,
            );
          },
        ),
      ),],),)
    );
  }
}

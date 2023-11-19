import 'package:arknights_offline_helper/components/operator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> imagePaths=[
  'assets/M3.jpg',
  'assets/sp傀影.jpg',
  'assets/sp水月.jpg',
  'assets/sp浊心斯卡蒂.jpg',
  'assets/仇白.jpg',
  'assets/伺夜.jpg',
  'assets/傀影.jpg',
  'assets/克里斯滕.jpg',
  'assets/冰酿.jpg',
  'assets/凛冬.jpg',
  'assets/凛视.jpg',
  'assets/凯尔希.jpg',
  'assets/刺玫.jpg',
  'assets/刻俄柏.jpg',
  'assets/号角.jpg',
  'assets/坎诺特.jpg',
  'assets/夜莺.jpg',
  'assets/安塞尔.jpg',
  'assets/寒芒克洛斯.jpg',
  'assets/山.jpg',
  'assets/嵯峨.jpg',
  'assets/年.jpg',
  'assets/异客.jpg',
  'assets/归溟幽灵鲨.jpg',
  'assets/德克萨斯.jpg',
  'assets/拉普兰德.jpg',
  'assets/提丰.jpg',
  'assets/斑点.jpg',
  'assets/斥罪.jpg',
  'assets/断罪者.jpg',
  'assets/星极.jpg',
  'assets/星熊.jpg',
  'assets/暗索.jpg',
  'assets/杰西卡.jpg',
  'assets/极境.jpg',
  'assets/林雨霞.jpg',
  'assets/格拉尼.jpg',
  'assets/桃金娘.jpg',
  'assets/梓兰.jpg',
  'assets/止颂.jpg',
  'assets/水陈.jpg',
  'assets/泡普卡.jpg',
  'assets/流明.jpg',
  'assets/流星.jpg',
  'assets/浊心斯卡蒂.jpg',
  'assets/澄闪.jpg',
  'assets/灵知.jpg',
  'assets/焰影苇草.jpg',
  'assets/玛恩纳.jpg',
  'assets/琴柳.jpg',
  'assets/白铁.jpg',
  'assets/百炼嘉维尔.jpg',
  'assets/缄默德克萨斯.jpg',
  'assets/罗小黑.jpg',
  'assets/老鲤.jpg',
  'assets/能天使.jpg',
  'assets/艾雅法拉.jpg',
  'assets/芳汀.jpg',
  'assets/菲亚梅塔.jpg',
  'assets/蛇屠箱.jpg',
  'assets/诗怀雅.jpg',
  'assets/赫拉格.jpg',
  'assets/远山.jpg',
  'assets/远牙.jpg',
  'assets/送葬人.jpg',
  'assets/重岳.jpg',
  'assets/银灰.jpg',
  'assets/阿尔图罗.jpg',
  'assets/陈.jpg',
  'assets/麒麟夜刀.jpg',
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

import 'package:arknights_offline_helper/components/bottom_bar.dart';
import 'package:arknights_offline_helper/components/help_dialog.dart';
import 'package:arknights_offline_helper/components/seed_dialog.dart';
import 'package:arknights_offline_helper/components/text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
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
class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  void deal_seed(String seedString,String set){
    int seed=seedString.hashCode;
    var rng=Random(seed);
    List<String> originalArray=List.from(imagePaths);
    List<String> selectedArray=[];
    int selectedNum=0,zuNum=0;
    Map<int,List<String>> m={};
    // 从originalArray里面获取值，当
    while(originalArray.isNotEmpty){
      selectedNum=selectedNum+1;
      int randomIndex=rng.nextInt(originalArray.length);
      String selectedValue=originalArray[randomIndex];
      selectedArray.add(selectedValue);
      originalArray.remove(selectedValue);
      if(selectedNum==5){
        zuNum=zuNum+1;
        selectedNum=0;
        m[zuNum]=List.from(selectedArray);
        print(m);
        selectedArray.clear();
        print(m);
      }
    }
    Navigator.of(context).pop();
    ElegantNotification.success(
      width: 70,
      // background: Colors.grey[200]!,
      title: Text("info"),
      description: Text("seed:$seedString\nset:$set"),
      animation: AnimationType.fromTop,
      notificationPosition: NotificationPosition.topLeft,
    ).show(context);
    Get.toNamed('/select', arguments: {
      'paths': m[int.parse(set)],
    });
  }
  @override
  Widget build(BuildContext context) {
    Color ThemeColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                ButtonWithBackground(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SeedDialog(
                          onSubmit: deal_seed,
                        );
                      },
                    );
                  },
                  text: "开始新的一局",
                  backgroundColor: ThemeColor,
                  width: 115,
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                ButtonWithBackground(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return HelpDialog();
                      },
                    );
                  },
                  text: "不知道怎么用？点这里",
                  backgroundColor: ThemeColor,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                ButtonWithBackground(
                  onPressed: () {
                    Get.toNamed("/lib");
                  },
                  text: "干员图鉴",
                  backgroundColor: Colors.lightBlueAccent,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

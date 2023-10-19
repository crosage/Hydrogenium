import 'package:arknights_offline_helper/components/bottom_bar.dart';
import 'package:arknights_offline_helper/components/help_dialog.dart';
import 'package:arknights_offline_helper/components/seed_dialog.dart';
import 'package:arknights_offline_helper/components/test.dart';
import 'package:arknights_offline_helper/components/text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';
List<String> imagePaths=[
  'assets/Image_1697642054108.jpg',
  'assets/Image_1697642061214.jpg',
  'assets/Image_1697642076413.jpg',
  'assets/Image_1697642093681.jpg',
  'assets/Image_1697642104603.jpg',
  'assets/Image_1697642121976.jpg',
  'assets/Image_1697642127498.jpg',
  'assets/Image_1697642137140.jpg',
  'assets/Image_1697642151576.jpg',
  'assets/Image_1697642155977.jpg',
  'assets/Image_1697642156011.jpg',
  'assets/Image_1697642156050.jpg',
  'assets/Image_1697642156079.jpg',
  'assets/Image_1697642156124.jpg',
  'assets/Image_1697642156155.jpg',
  'assets/Image_1697642156191.jpg',
  'assets/Image_1697642156239.jpg',
  'assets/Image_1697642161016.jpg',
  'assets/Image_1697642180544.jpg',
  'assets/Image_1697642204802.jpg',
  'assets/Image_1697642206767.jpg',
  'assets/Image_1697642209440.jpg',
  'assets/Image_1697642211396.jpg',
  'assets/Image_1697642216319.jpg',
  'assets/Image_1697642220372.jpg',
  'assets/Image_1697642223045.jpg',
  'assets/Image_1697642225477.jpg',
  'assets/Image_1697642227939.jpg',
  'assets/Image_1697642230204.jpg',
  'assets/Image_1697642232562.jpg',
  'assets/Image_1697642235029.jpg',
  'assets/Image_1697642238730.jpg',
  'assets/Image_1697642244499.jpg',
  'assets/Image_1697642465607.jpg',
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
    print(m);
    print(set);
    print(m[set]);
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

          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

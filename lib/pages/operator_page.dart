import 'package:arknights_offline_helper/components/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperatorPage extends StatefulWidget{
  @override
  _OperatorPageState createState()=> _OperatorPageState();
}
class _OperatorPageState extends State<OperatorPage>{
  String imagePath="";
  @override
  void initState(){
    super.initState();
    imagePath=Get.arguments["image"];
  }
  @override
  Widget build(BuildContext context){
    print(imagePath);
    return Scaffold(
      body: Center(
        child: Image.asset(imagePath),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "route.dart";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: "/",
      title:"arknights_offline_helper",
      getPages: AscentRoutes.getPages,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Operator extends StatelessWidget{
  final double width;
  final double height;
  final String img;
  const Operator({this.width=200,this.height=200,required this.img});
  @override
  Widget build(BuildContext context){
    return InkWell(
      child:Container(
        width: width,
        height: height,
        child: Image.asset(
          img
        ),
      ),
      onTap: (){
        Get.toNamed(
            "/operator",
            arguments: {
              "image": img
            }
        );
      },
    );
  }
}
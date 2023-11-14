import 'package:arknights_offline_helper/components/operator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<String> paths = [];

  @override
  void initState() {
    super.initState();
    print(Get.arguments);
    print(Get.arguments["paths"]);
    paths = Get.arguments["paths"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: List.generate(
          paths.length,
              (index) {
            return Operator(
              img: paths[index],
              height: 200,
            );
          },
        ),
      ),
    );
  }
}

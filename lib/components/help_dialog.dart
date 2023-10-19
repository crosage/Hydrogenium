import 'package:flutter/material.dart';

class HelpDialog extends StatefulWidget {
  @override
  _HelpDialogState createState() => _HelpDialogState();
}

class _HelpDialogState extends State<HelpDialog> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('help'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
            Text("点上面的开始新的一局\n\n第一个框和其他人输入相同的种子值，\n\n第二个框内和其他人输入不同的座次")
        ],
      ),
    );
  }
}

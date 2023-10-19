import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SeedDialog extends StatefulWidget {
  final Function(String, String) onSubmit;

  SeedDialog({required this.onSubmit});

  @override
  _SeedDialogState createState() => _SeedDialogState();
}

class _SeedDialogState extends State<SeedDialog> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  void loadSavedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String saveSeed= prefs.getString("seed")??"";
    String saveSet = prefs.getString("set") ?? "";
    setState(() {
      textController2.text = saveSet;
      textController1.text = saveSeed;
    });
  }

  @override
  void initState() {
    super.initState();
    loadSavedValue();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('输入种子'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 200,
                child: TextField(
                  controller: textController1,
                  decoration: InputDecoration(labelText: 'seed'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    textController1.clear();
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 200,
                child: TextField(
                  controller: textController2,
                  decoration: InputDecoration(labelText: 'set'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    textController2.clear();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString("set", textController2.text);
            prefs.setString("seed", textController1.text);
            widget.onSubmit(textController1.text, textController2.text);
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}

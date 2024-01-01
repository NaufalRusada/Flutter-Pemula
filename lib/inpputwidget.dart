import 'package:flutter/material.dart';


class InputWidget extends StatefulWidget {


  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widget"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),

            ElevatedButton(
                child: Text("Elevated Button"), onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, $_name'),
                    );
                  });
            }),



          ],
        ),
      ),
    );
  }
}

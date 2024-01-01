import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                    child: Text("Elevated Button"), onPressed: () {}),
                TextButton(child: Text("Elevated Button"), onPressed: () {}),
                OutlinedButton(
                    child: Text("Elevated Button"), onPressed: () {}),
                IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

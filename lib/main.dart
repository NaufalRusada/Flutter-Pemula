import 'package:flutter/material.dart';
import 'package:flutter_pemula/expandedandflexible.dart';
import 'package:flutter_pemula/navigation.dart';
import 'package:flutter_pemula/menampilkandaftarwisata.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wisata Kudus",
      theme: ThemeData(),
      home: ListDaftarWisata(),
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('First Screen'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               onPressed: () {},
//             ),
//           ],
//           leading: IconButton(
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         ),
//         body: Container(
//             color: Colors.red,
//             margin: EdgeInsets.all(10.0),
//             child: Center(
//                 child: Container(
//                   color: Colors.yellow,
//                   width: 200,
//                   height: 100,
//                   child: Text(
//                     "HEllo World",
//                     style: TextStyle(fontSize: 30),
//                   ),
//                 ))),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ));
//   }
// }

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
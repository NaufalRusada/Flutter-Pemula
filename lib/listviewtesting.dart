import 'package:flutter/material.dart';

class ListViewTesting extends StatelessWidget {
  const ListViewTesting({Key? key}) : super(key: key);

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          // Contoh ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),

          Container(
            child: Text("Dibawah ListView Spretad"),
          ),

          // Contoh ListView.separated
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.black,
                  height: 2,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ],
      ),







        // children: <Widget>[
        //   Container(
        //     margin: EdgeInsets.only(bottom: 10),
        //     height: 400,
        //     decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(color: Colors.black),
        //     ),
        //     child : const Center(
        //     child: Text(
        //       "1",
        //       style: TextStyle(fontSize: 50),
        //     ),
        //     ),
        //   ),
        //
        //
        //   Container(
        //     margin: EdgeInsets.only(bottom: 10),
        //     height: 400,
        //     decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(color: Colors.black),
        //     ),
        //     child : const Center(
        //       child: Text(
        //         "1",
        //         style: TextStyle(fontSize: 50),
        //       ),
        //     ),
        //   ),
        //
        //   Container(
        //     margin: EdgeInsets.only(bottom: 10),
        //     height: 400,
        //     decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(color: Colors.black),
        //     ),
        //     child : const Center(
        //       child: Text(
        //         "2",
        //         style: TextStyle(fontSize: 50),
        //       ),
        //     ),
        //   ),
        //
        //   Container(
        //     margin: EdgeInsets.only(bottom: 10),
        //     height: 400,
        //     decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(color: Colors.black),
        //     ),
        //     child : const Center(
        //       child: Text(
        //         "3",
        //         style: TextStyle(fontSize: 50),
        //       ),
        //     ),
        //   ),
        //
        // ],

    );
  }
}


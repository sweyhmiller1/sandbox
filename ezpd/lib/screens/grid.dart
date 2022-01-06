import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listForGrid = ["a", "b", "c", "d", "e"];
    var myGridView = GridView.builder(
      itemCount: listForGrid.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            elevation: 5.0,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: Text(listForGrid[index]),
            ),
          ),
          onTap: () {
            print(listForGrid[index]);
          },
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activities"),
      ),
      body: myGridView,
    );
  }
}

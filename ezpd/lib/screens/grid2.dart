import 'package:flutter/material.dart';
class GridLayout extends StatelessWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          'Planner',
          style: TextStyle(fontSize: 24),
        ),
        actions: [Icon(Icons.search), SizedBox(width: 12)],
      ),
      Widget buildGrid() => GridView.countBuilder(
      padding: 3,
      tileBuilder: (index) const Tile.fit(2),
      crossAxisCount: 4,
    mainAxisSpacing: 4,
      crossAxisSpacing: 4,
    itemBuilder: (context, index)
    )
    )
        },
      ),
    );
  }
}

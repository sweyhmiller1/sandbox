import 'package:ezpd/models/moodcard.dart';
import 'package:ezpd/screens/forms.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}
class _GridState extends State<Grid> {
  //const Grid({Key key}) : super(key: key);
  String datetime = '';
  String image = '';
  String actimage = '';
  String dateonly = '';
  @override
  Widget build(BuildContext context) {
    var listForGrid = ["a", "b", "c", "d", "e"];
    var myGridView = GridView.builder(
      itemCount: listForGrid.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
          /*Provider.of<MoodCard>(context,
          listen: false)
              .add(listForGrid[index]);*/
            setState(() {
              Provider.of<MoodCard>(context, listen: false).addPlace(
                  datetime,
                  input,
                  image,
                  actimage,
                  listForGrid[index],
                  dateonly,
                  note);
            }),
            Navigator.of(context).pushNamed('/home'),
          },
          child: Card(
            elevation: 5.0,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: Text(listForGrid[index]),
            ),
          ),
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

import 'package:flutter/material.dart';
import 'dart:ui';

final inputsArray = new List<String>();

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 130,
              height: 40,
              child: TextButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style:
                  TextButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  child: Text("Button 1", style: TextStyle(color: Colors.white)),
            ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 130,
              height: 40,
              child: TextButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                style:
                TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child: Text("Button 2", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 130,
              height: 40,
              child: TextButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                style:
                TextButton.styleFrom(
                  //primary: Colors.blueGrey,
                  backgroundColor: Colors.blueGrey,
                ),
                child: Text("Button 3", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => {
                setState(() {
                  /*Provider.of<MoodCard>(context, listen: false).addPlace(
                      datetime,
                      mood,
                      image,
                      Provider.of<MoodCard>(context, listen: false)
                          .activityimage
                          .join('_'),
                      Provider.of<MoodCard>(context, listen: false)
                          .activityname
                          .join('_'),
                      dateonly);*/
                }),
                Navigator.of(context).pushNamed('/text'),
              },
              child: Container(
                height: 38.00,
                width: 117.00,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 21.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.save_alt , size: 20 , color: Colors.white)
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(width: 1.00, color: Colors.grey,), borderRadius: BorderRadius.circular(19.00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

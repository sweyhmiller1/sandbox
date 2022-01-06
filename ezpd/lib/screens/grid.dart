import 'package:flutter/material.dart';


class grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
  appBar: AppBar(
  title: Text(
  'Planner',
  style: TextStyle(fontSize: 24),
  ),
  actions: [Icon(Icons.search), SizedBox(width: 12)],
  ),
  body: Center(
  child: isLoading
  ? CircularProgressIndicator()
      : notes.isEmpty
  ? Text(
  'Here is where you can plan a workout, and set a schedule, try it out!',
  style: TextStyle(color: Colors.white, fontSize: 24),
  )
      : buildNotes(),
  ),
  floatingActionButton: FloatingActionButton(
  backgroundColor: Colors.black,
  child: Icon(Icons.add),
  onPressed: () async {
  await Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => AddEditNotePage()),
  );
}

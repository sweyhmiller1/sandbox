import 'package:flutter/cupertino.dart';
import 'package:ezpd/helpers/db_helper.dart';
import 'package:ezpd/helpers/mooddata.dart';
import 'package:ezpd/models/activity.dart';

class MoodCard extends ChangeNotifier {
  String datetime;
  String input;
  List<String> activityname = [];
  List<String> activityimage = [];
  String image;
  String actimage;
  String actname;
  String note;
  MoodCard({this.actimage, this.actname, this.datetime, this.image, this.input, this.note});
  List items;
  List<MoodData> data=[];
  String date;
  bool isloading=false;
  List<String> actiname=[];


  void add(Activity act) {
    activityimage.add(act.image);
    activityname.add(act.name);
    notifyListeners();
  }

  void remove(Activity act) {
    activityimage.remove(act.image);
    activityname.remove(act.name);
    notifyListeners();
  }


  Future<void> addPlace(
      String datetime,
      String input,
      String image,
      String actimage,
      String actname,
      String date,
      String note
      ) async {
    DBHelper.insert('user_moods', {
      'datetime': datetime,
      'inputs': input,
      'image': image,
      'actimage': actimage,
      'actname': actname,
      'date':date,
      'notes': note
    });
    notifyListeners();
  }

  Future<void> deletePlaces(String datetime) async {
    DBHelper.delete(datetime);
    notifyListeners();
  }
}

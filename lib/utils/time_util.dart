import 'package:flutter/cupertino.dart';

import 'package:intl/intl.dart';
extension IntTimeExtension on int{
  DateTime getDateTimeFromInt(){
    return DateTime.fromMillisecondsSinceEpoch(this, isUtc: true);
  }

  /**
   * This function return you a time on 1/1/1970, with the time in miliseconds passed
   */

  DateTime getEpochDateWithATimeFromTimeInt(){
    Duration duration = Duration(milliseconds: this);
    DateTime epoch = DateTime.utc(1970);
    DateTime dateTime = epoch.add(duration);
    return dateTime;
  }

  String getJustDate() => getDateTimeFromInt().getJustDate();

  String getJustTime() => getDateTimeFromInt().getJustTime();





}

extension DateTimeExtention on DateTime{
  String getFormatedTime(){
    var time = toLocal();
    return DateFormat.yMMMEd().add_jm().format(time);
  }

  String getJustDate(){
    var time = toLocal();
    return DateFormat.yMMMEd().format(time);
  }

  String getJustTime(){
    var time = toLocal();
    return DateFormat.jm().format(time);
  }

  int getDateInInt() => millisecondsSinceEpoch;

  String getPartOfDate() {
    var now = DateTime.now();
    if (this == now) {
      return "$hour:$minute";
    } else {
      if (year == now.year) {
        return "$day-${DateFormat.MMMM().format(this).substring(0, 3)}";
      } else {
        return "${DateFormat.MMMM().format(this).substring(0, 3)}-$year";
      }
    }
  }

  static DateTime? getDateTimeFromDateAndTime({int? date, int? time}){
    if(date == null && time != null){

      DateTime date = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      int dateTimeInMil = date.millisecondsSinceEpoch + time!;
      return dateTimeInMil.getDateTimeFromInt();

    }  else if (date != null && time != null){

      DateTime dtd = date!.getDateTimeFromInt();

      DateTime dtt = (time! / 1000).round().getEpochDateWithATimeFromTimeInt();

      DateTime dateTime = DateTime(dtd.year, dtd.month, dtd.day, dtt.hour, dtt.minute, dtt.second, dtt.millisecond);

      return dateTime;
    }
  }
}
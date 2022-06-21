class DateHelpers{
  static String getStartData(){
    var _date = DateTime.now();
    return "${ _date.toLocal().day}/${ _date.month }/${ _date.year }";
  }
}
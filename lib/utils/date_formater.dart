import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  const monthAbbreviations = [
    '', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'
  ];

  String day = date.day.toString();
  String month = monthAbbreviations[date.month];
  String year = date.year.toString();

  return "$day $month, $year";
}

String formatDateMonthNameDayYear(DateTime date){
  return DateFormat('MMMM d, y').format(date);
}

DateTime parseDateMonthNameDayYear(String dateString) {
  return DateFormat('MMMM d, y').parse(dateString);
}

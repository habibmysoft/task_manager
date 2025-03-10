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

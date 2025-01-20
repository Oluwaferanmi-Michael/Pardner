import '../presentation/resources/app_strings.dart';

extension IntegerToMonth on int {
  // Converts integer to month of year
  String intToMonth() => Strings.months.elementAt(this - 1);

  // Converts integer to day of week
  String intToDay() => Strings.days.elementAt(this - 1);
}
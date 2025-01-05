import 'app_strings.dart';

extension IntegerToMonth on int {
  String intToMonth() => Strings.months.elementAt(this - 1);
  String intToDay() => Strings.days.elementAt(this - 1);
}
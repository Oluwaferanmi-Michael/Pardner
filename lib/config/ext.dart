import '../UI/resources/app_strings.dart';
import 'enums.dart';

extension IntegerToMonth on int {
  // Converts integer to month of year
  String intToMonth() => Strings.months.elementAt(this - 1);

  // Converts integer to day of week
  String intToDay() => Strings.days.elementAt(this - 1);
}


extension EnumToConst on Method{
  int enumToConst() {
    var methodValue = 0;  
  switch (this) {
    case Method.pomodoro : methodValue = 1;
    case Method.unknown : methodValue = 0;
  }

  return methodValue;
  }
}
extension ConstToEnum on int{
  Method constToEnum() {
    Method method = Method.unknown;  
  switch (this) {
    case 1 : method = Method.pomodoro;
    case 0 : method = Method.unknown;
  }

  return method;
  }
}
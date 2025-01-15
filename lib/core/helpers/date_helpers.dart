import '../constants/app_locale_keys_cons.dart';

class DateHelper {
  DateHelper._();

  static String monthToString(int month) {
    return monthNames[month - 1];
  }
}

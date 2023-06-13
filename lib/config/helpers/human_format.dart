import 'package:intl/intl.dart';

class HumanFormats {
  //convert number to readbleNumber
  static String HumanReadleNumber (double number){
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',

    ).format(number);
    return formatterNumber;
  }
}
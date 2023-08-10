import 'package:intl/intl.dart';

class HumanFormats{

  static String humanReadbleNumber( double number){

    // final formatterNumber = NumberFormat.currency(
    //   decimalDigits: 0,
    //   symbol: '',
    // ).format(number);
    final formatter = NumberFormat.compact(locale: "en_US", explicitSign: false); // convertir miles y millones

    final formatterNumber = formatter.format(number);

    return formatterNumber;
  }

}


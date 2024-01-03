import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDataTime(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
    //i mean we can change it to our preference later on
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
    //LATER ON WE CAN CHANGE IT TO GHC OR ANY CURRENCY
  }

  static String formatPhoneNumber(String phoneNumber) {
    //10 DIGITS PHONE NUMBER WITH THE PREFIX INCLUDED (+233 20 123 4567)
    
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    //11 DIGITS PHONE NUMBER (+233 20 123 45678)
    else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }


///Not even tested and there bugs surrounding the codes like WW2
///
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(2, 5)}';
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+233') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(' ${digitsOnly.substring(i, end)}');
      if (end < digitsOnly.length) {
        formattedNumber.write(',');
      }

      i = end;
    }
  }
}

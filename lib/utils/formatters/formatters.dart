import 'package:intl/intl.dart';

class SFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // My choice of date format
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'uz_UZ', symbol: 'UZS', decimalDigits: 0).format(amount); // Uzbek currency format
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Uzbek code format: +998 XX XXX XX XX
    if (phoneNumber.length == 12 && phoneNumber.startsWith('998')) {
      return '+${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 5)} ${phoneNumber.substring(5, 8)} ${phoneNumber.substring(8, 10)} ${phoneNumber.substring(10, 12)}';
    }
    return phoneNumber; // Return as is if format is unexpected
  }
}

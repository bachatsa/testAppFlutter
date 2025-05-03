import 'package:intl/intl.dart';
class Utils {
  static String getIndonesianDay(String englishDay) {
    const days = {
      'Monday': 'Senin',
      'Tuesday': 'Selasa',
      'Wednesday': 'Rabu',
      'Thursday': 'Kamis',
      'Friday': 'Jumat',
      'Saturday': 'Sabtu',
      'Sunday': 'Minggu',
    };
    return days[englishDay] ?? englishDay;
  }

  static String getIndonesianMonth(String englishMonth) {
    const months = {
      'January': 'Januari',
      'February': 'Februari',
      'March': 'Maret',
      'April': 'April',
      'May': 'Mei',
      'June': 'Juni',
      'July': 'Juli',
      'August': 'Agustus',
      'September': 'September',
      'October': 'Oktober',
      'November': 'November',
      'December': 'Desember',
    };
    return months[englishMonth] ?? englishMonth;
  }

  static String formatToIndonesianDate(DateTime dateTime) {
    String englishDay = DateFormat('EEEE').format(dateTime);
    String indonesianDay = getIndonesianDay(englishDay);
    
    String englishMonth = DateFormat('MMMM').format(dateTime);
    String indonesianMonth = getIndonesianMonth(englishMonth);
    
    String date = DateFormat('d').format(dateTime);
    String year = DateFormat('yyyy').format(dateTime);
    
    return '$indonesianDay, $date $indonesianMonth $year';
  }

  static String formatToIndonesianTime(DateTime dateTime) {
    return DateFormat('HH:mm:ss').format(dateTime);
  }
} 
import 'package:intl/intl.dart';
import 'package:texa1_app/translation/translations.g.dart';

extension DateTimeExtension on DateTime {
  String formatTime() {
    return DateFormat('h:mm a').format(this);
  }

  String formatTime1() {
    return DateFormat('h:mm \na').format(this);
  }

  String formatDate() {
    return DateFormat('yyyy/M/d').format(this);
  }

  String formatRelative(Translations t) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final date = DateTime(year, month, day);

    if (date == today) {
      return t.date.today;
    } else if (date == yesterday) {
      return t.date.yesterday;
    } else if (today.difference(date).inDays <= 7 &&
        today.difference(date).inDays >= 0) {
      return t.date.daysAgo(n: today.difference(date).inDays);
    } else {
      return DateFormat('yyyy-M-d').format(this);
    }
  }

  String formatDateTime(Translations t) {
    return "${formatRelative(t)} - ${formatTime()}";
  }
}

import 'package:intl/intl.dart';

import 'constants.export.dart';

extension DateTimeExtension on DateTime {
  String get formattedTime => '${ListConstants.MONTH[month]} ${day.padInt}, '
      '${DateFormat('hh:mm a').format(this)}';

  String get formattedDate =>
      '${day.padInt} ${ListConstants.MONTH[month]} $year';

  String get formattedDay => '${day.padInt} ${ListConstants.MONTH[month]}';
}

extension StringExtensions on String {
  DateTime get unformateDate {
    final values = split(' ');
    return DateTime(
      int.parse(values[2]),
      ListConstants.MONTHNUMBER[values[1]] ?? 1,
      int.parse(values[0]),
    );
  }
}

extension IntExtensions on int {
  String get padInt {
    return toString().padLeft(2, '0');
  }
}

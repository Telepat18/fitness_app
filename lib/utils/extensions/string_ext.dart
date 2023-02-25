import 'package:recase/recase.dart';

extension StringExt on String {
  String toCamelCase() => camelCase;
  String toSnakeCase() => snakeCase;
  String toScreamingSnakeCase() => constantCase;
  String toTitleCase() => titleCase;

  String getNumberWithBrackets(int number, [bool withPersentSign = false]) {
    return '$this ($number${withPersentSign ? '%' : ''})';
  }

  static double toDouble(String json) => double.parse(json);

  List<String> splitByComma() =>
      split(',').map((e) => e.trim()).where((item) => item.isNotEmpty).toList();

  String get abbreviation => isNotEmpty ? '${this[0]}.' : '';
}

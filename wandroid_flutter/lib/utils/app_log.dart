import 'package:logger/logger.dart';

var logger = Logger(
  level: Level.debug,
  printer: PrettyPrinter(
      methodCount: 2, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 120, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: true // Should each log print contain a timestamp
      ),
);

class AppLogger {
  // Sample of abstract logging function
  static void write(String text, {bool isError = false}) {
    Future.microtask(() => print('** $text. isError: [$isError]'));
  }

  static void d(String message) {
    logger.d(message);
  }

  static void w(String message) {
    logger.w(message);
  }

  static void e(String message) {
    logger.e(message);
  }

  static void i(String message) {
    logger.i(message);
  }
}

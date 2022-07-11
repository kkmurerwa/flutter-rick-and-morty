import 'package:flutter/foundation.dart';

class Utils {

  static void logger(String message) {
    // Only output to console if debug mode is enabled
    if (kDebugMode) {
      print("==========================================================");
      print(message);
      print("==========================================================");
    }
  }

}
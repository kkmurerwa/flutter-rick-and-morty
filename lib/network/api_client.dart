import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiClient with ChangeNotifier {
  final http.Client _client = http.Client();

  http.Client returnConnection() {
    return _client;
  }
}
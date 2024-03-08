import 'package:flutter/services.dart';

class NativeMethods {
  static const MethodChannel _channel = MethodChannel('fetchAnimeList');

  static Future<dynamic> fetchAnimeList() async {
    return _channel.invokeMethod('fetchAnimeList', []);
  }
}

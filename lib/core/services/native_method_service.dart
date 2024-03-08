import 'package:flutter/services.dart';

class NativeMethods {
  static const MethodChannel _channel = MethodChannel('fetchAnimeList');

  static Future<dynamic> fetchAnimeList() async {
    return _channel.invokeMethod('fetchAnimeList', []);
  }

  static Future<dynamic> fetchCharacterList(int id) async {
    return _channel.invokeMethod('fetchAnimeList', [id]);
  }
}

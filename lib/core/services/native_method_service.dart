import 'package:flutter/services.dart';

class NativeMethods {
  static const MethodChannel _channel = MethodChannel('fetchAnimeList');

  static Future<dynamic> fetchAnimeList(int page) async {
    return _channel.invokeMethod('fetchAnimeList', page);
  }

  static Future<dynamic> fetchCharacterList(int id) async {
    return _channel.invokeMethod('fetchCharacterList', id);
  }
}

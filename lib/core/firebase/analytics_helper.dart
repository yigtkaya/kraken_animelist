import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsHelper {
  Future<void> log({
    String? name,
    Map<String, dynamic>? parameters,
  }) async {
    await FirebaseAnalytics.instance.logEvent(
      name: name ?? '', // event name
      parameters: parameters ?? {}, //event params
    );
  }
}

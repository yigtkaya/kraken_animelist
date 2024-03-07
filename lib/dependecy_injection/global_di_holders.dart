import 'package:get_it/get_it.dart';
import 'package:kraken_animelist/core/firebase/analytics_helper.dart';
import 'package:kraken_animelist/local_storage/hive_helper.dart';

/// Get it instance
final di = GetIt.instance;

/// environment variables
// final env = di.get<Environment>();

/// hive storage
final hiveStorage = di.get<HiveHelper>();

final analytics = di.get<AnalyticsHelper>();

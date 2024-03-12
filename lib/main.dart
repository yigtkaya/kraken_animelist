import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/dependecy_injection/di.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_bloc.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';
import 'package:kraken_animelist/features/anime_list/data/repository/anime_list_repository_impl.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_page.dart';
import 'package:kraken_animelist/src/shared/constants/app_design_constant.dart';
import 'package:kraken_animelist/src/shared/observers/custom_route_observer.dart';
import 'package:kraken_animelist/src/shared/utils/app_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      await setupDI();
      runApp(
        App(
          customRouteObserver: CustomRouteObserver(),
        ),
      );
    },
    (error, stackTrace) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'uncaught error');
    },
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.customRouteObserver});

  final CustomRouteObserver customRouteObserver;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConstants.designSize,
      minTextAdapt: true,
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appTitle,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xffE5EBFE),
          primarySwatch: Colors.blue,
        ),
        navigatorObservers: [customRouteObserver],
        // ignoring on purpose, one of the only allowed used of navigatorKey
        // ignore: invalid_use_of_protected_member
        navigatorKey: RouteHelper.appNavigatorKey,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<KrakenAnimeBloc>(
              create: (context) => KrakenAnimeBloc(
                KrakenAnimeRepositoryImpl(),
              )..add(
                  const AppStartEvent(),
                ),
            ),
          ],
          child: const AnimeListingPage(),
        ),
      ),
    );
  }
}

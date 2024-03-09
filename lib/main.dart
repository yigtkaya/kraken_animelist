import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/dependecy_injection/di.dart';
import 'package:kraken_animelist/features/anime_list/bloc/app_bloc.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_page.dart';
import 'package:kraken_animelist/features/no_internet_connection/no_internet_connection_view.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => AppBloc()..add(const AppStartEvent()),
        ),
      ],
      child: ScreenUtilInit(
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
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: StreamBuilder<ConnectivityResult>(
                  stream: Connectivity().onConnectivityChanged,
                  builder: (context, snapshot) {
                    final connectivityResult = snapshot.data;
                    if (connectivityResult == ConnectivityResult.none) {
                      return NoInternetConnectionView(
                        child: child!,
                      );
                    } else {
                      // has connection check should relaunch
                      // if (app is AppStateError) {
                      //   // if my app is not loaded successfully then connectivityResult will be null
                      //   if (connectivityResult == null) {
                      //     return const ExceptionOnAppLaunch();
                      //   } else {
                      //     ref.read(appProvider.notifier).reLaunch(context);
                      //     return const SizedBox.shrink();
                      //   }
                      // }
                    }
                    return Overlay(
                      initialEntries: [
                        if (child != null) ...[
                          OverlayEntry(
                            builder: (context) {
                              return child;
                            },
                          ),
                        ],
                      ],
                    );
                  },
                ),
              ),
            );
          },
          home: MultiBlocProvider(
            providers: [
              BlocProvider<AppBloc>(
                create: (context) => AppBloc()
                  ..add(
                    const AppStartEvent(),
                  ),
              ),
            ],
            child: const AnimeListingPage(),
          ),
        ),
      ),
    );
  }
}

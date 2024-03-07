import 'package:flutter/material.dart';

class CustomRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route route, Route? previousRoute) async {
    super.didPush(route, previousRoute);

    // close if keyboard is open
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void didPop(Route route, Route? previousRoute) async {
    super.didPop(route, previousRoute);

    // close if keyboard is open
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

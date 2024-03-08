import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;

  // /////////////////////////////////////////
  // ! Navigation Ext
  // /////////////////////////////////////////

  /// Navigator.push
  Future<T?> push<T>(Route<T> route) {
    return Navigator.push(this, route);
  }

  /// Navigator.pushReplacement
  Future<T?> replace<T>(Route<T> route) {
    return Navigator.pushReplacement(this, route);
  }

  /// Navigator.pushAndRemoveUntil
  Future<T?> pushAndRemoveUntil<T>(Route<T> route) {
    return Navigator.pushAndRemoveUntil(
      this,
      route,
      (route) => false,
    );
  }

  // Future<T?> pushAndRemoveUntilWithMain<T>(Route<T> route) {
  //   navigationLog(
  //     "navigation: pushAndRemoveUntil routeName = '${route.settings.name}'",
  //   );
  //   return Navigator.pushAndRemoveUntil(
  //     this,
  //     MaterialPageRoute(builder: (BuildContext context) => const MainView()),
  //     (Route<dynamic> route) => route is MainView,
  //   );
  // }

  /// Navigator.pop
  void pop<T>([T? result]) {
    Navigator.pop(this, result);
  }

  void popUntil<T>(Route<T> expectedRoute) {
    Navigator.popUntil(
      this,
      (route) => route.settings.name == expectedRoute.settings.name,
    );
  }
}

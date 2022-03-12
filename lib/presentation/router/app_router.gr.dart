// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../views/screens/start_screen/start_screen.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    StartScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(StartScreen.name, path: '/')];
}

/// generated route for
/// [_i1.StartScreen]
class StartScreen extends _i2.PageRouteInfo<void> {
  const StartScreen() : super(StartScreen.name, path: '/');

  static const String name = 'StartScreen';
}

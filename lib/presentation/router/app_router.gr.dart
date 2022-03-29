// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../views/screens/history/history_screen.dart' as _i3;
import '../views/screens/notification/notifications_screen.dart' as _i2;
import '../views/screens/start_screen/start_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    StartScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StartScreen());
    },
    NotificationsScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NotificationsScreen());
    },
    HistoryScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HistoryScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(StartScreen.name, path: '/'),
        _i4.RouteConfig(NotificationsScreen.name,
            path: '/notifications-screen'),
        _i4.RouteConfig(HistoryScreen.name, path: '/history-screen')
      ];
}

/// generated route for
/// [_i1.StartScreen]
class StartScreen extends _i4.PageRouteInfo<void> {
  const StartScreen() : super(StartScreen.name, path: '/');

  static const String name = 'StartScreen';
}

/// generated route for
/// [_i2.NotificationsScreen]
class NotificationsScreen extends _i4.PageRouteInfo<void> {
  const NotificationsScreen()
      : super(NotificationsScreen.name, path: '/notifications-screen');

  static const String name = 'NotificationsScreen';
}

/// generated route for
/// [_i3.HistoryScreen]
class HistoryScreen extends _i4.PageRouteInfo<void> {
  const HistoryScreen() : super(HistoryScreen.name, path: '/history-screen');

  static const String name = 'HistoryScreen';
}

import 'package:auto_route/auto_route.dart';
import 'package:uber_project/presentation/views/screens/history/history_screen.dart';
import 'package:uber_project/presentation/views/screens/notification/notifications_screen.dart';
import 'package:uber_project/presentation/views/screens/start_screen/start_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartScreen, initial: true),
    AutoRoute(page: NotificationsScreen),
    AutoRoute(page: HistoryScreen),
  ],
)
class $AppRouter {}

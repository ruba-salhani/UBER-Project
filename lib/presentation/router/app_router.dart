import 'package:auto_route/auto_route.dart';
import 'package:uber_project/presentation/views/screens/start_screen/start_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartScreen, initial: true),
  ],
)
class $AppRouter {}

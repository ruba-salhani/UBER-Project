import 'package:flutter/material.dart';
import 'package:uber_project/global/app_constants.dart';
import 'package:uber_project/presentation/router/app_router.gr.dart';
import 'package:uber_project/presentation/theme/app_theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: AppTheme.darkTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}

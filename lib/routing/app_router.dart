library routing;

import 'dart:async';

import 'package:animations/animations.dart';
import 'package:currency_ar/screens/scanner/screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'page_routes/app_page_route.dart';

part 'page_routes/bottom_sheet_page.dart';

part 'page_routes/dialoge_page.dart';

part 'page_routes/no_animation_page_route.dart';

part 'app_router_arguments.dart';

part 'app_router_refresh_stream.dart';

part 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static GoRouter buildRouter() {
    final router = GoRouter(
      initialLocation: AppRoutes.home,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          name: "home",
          path: "/",
          pageBuilder: (context, _) => ScannerScreen.page(context),
        ),
      ],
    );

    return router;
  }
}

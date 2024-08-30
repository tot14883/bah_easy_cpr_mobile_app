import 'package:flutter/material.dart';

class AppRouter {
  static const initialRouterName = null;

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      // case SplashScreen.routeName:
      //   return CustomPageRouteBuilder.route(
      //     name: SplashScreen.routeName,
      //     builder: (ctx) => const SplashScreen(),
      //     transitionType: RouteTransition.fade,
      //   );

      default:
        assert(false, 'this should not be reached');
        return null;
    }
  }
}

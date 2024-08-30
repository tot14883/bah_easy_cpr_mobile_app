import 'dart:async';

import 'package:bah_easy_cpr/core/local/base_shared_preference.dart';
import 'package:bah_easy_cpr/core/logger/base_logger.dart';
import 'package:bah_easy_cpr/core/router/app_navigator.dart';
import 'package:bah_easy_cpr/core/router/app_router.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_consumer_state.dart';
import 'package:bah_easy_cpr/widget/base_widget/restart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      final sharedPrefs = await SharedPreferences.getInstance();

      final container = ProviderContainer(
        overrides: [
          sharedPreferences.overrideWithValue(sharedPrefs),
        ],
      );

      // final db = container.read(baseHiveProvider);
      // await db.init();

      // await container.read(baseHiveProvider).init();
      await container.read(baseLoggerProvider).init();

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      container.read(sharedPreferences);

      runApp(
        UncontrolledProviderScope(
          container: container,
          child: const RestartWidget(
            child: RootRestorationScope(
              restorationId: 'root',
              child: MyApp(),
            ),
          ),
        ),
      );
    },
    (error, stack) {},
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends BaseConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appNavigator = ref.watch(appNavigatorProvider);

    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: appNavigator.navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRouter.initialRouterName,
          onGenerateRoute: AppRouter.router,
          title: 'SYS',
          builder: (context, child) {
            return SizedBox(
              child: child,
            );
          },
        );
      },
    );
  }
}

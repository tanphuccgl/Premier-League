import 'package:app/router/app_router.dart';
import 'package:app/router/coordinator.dart';
import 'package:app/router/route_observer.dart';
import 'package:app/router/router_name.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    _endSplash();

    final botToastBuilder = BotToastInit();

    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: XCoordinator.navigatorKey,
          initialRoute: XRouterName.dashboard,
          onGenerateRoute: XAppRoute.onGenerateRoute,
          navigatorObservers: [XRouteObserver()],
          builder: (context, child) {
            child = botToastBuilder(context, child);
            return child;
          },
          onGenerateTitle: (BuildContext context) => "",
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
        );
      },
      rebuildFactor: (old, data) => RebuildFactors.always(old, data),
      designSize: const Size(360, 844),
      useInheritedMediaQuery: true,
    );
  }

  Future<void> _endSplash() async {
    FlutterNativeSplash.remove();
  }
}

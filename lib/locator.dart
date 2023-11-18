import 'package:app/bloc_observer.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConfigApp {
  static Future<void> initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _locator();

    Bloc.observer = XBlocObserver();
  }

  static void _locator() {
    GetIt.I.registerLazySingleton(() => Domain());
    //   ..registerLazySingleton(() => AccountBloc())
    //   ..registerLazySingleton(() => ListScheduleBloc());
  }
}

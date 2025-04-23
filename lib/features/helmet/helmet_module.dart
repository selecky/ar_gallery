import 'package:ar_gallery/architecture/utils/app_module.dart';
import 'package:ar_gallery/features/helmet/presentation/screens/helmet_screen.dart';
import 'package:ar_gallery/generic/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class HelmetModule extends AppModule {
  @override
  void registerBloc() {}

  @override
  void registerScreenProviders() {
    GetIt.I.registerFactoryParam<Widget, GoRouterState, BuildContext>(
      (goRouterState, context) => GetIt.I.get<HelmetScreen>(param1: goRouterState, param2: context),
      instanceName: ScreenNames.helmet,
    );
  }

  @override
  void registerDataSource() {}

  @override
  void registerNavigation() {}

  @override
  void registerRepo() {}

  @override
  void registerScreen() {
    GetIt.I.registerFactoryParam<HelmetScreen, GoRouterState, BuildContext>(
      (goRouterState, context) => const HelmetScreen(),
    );
  }

  @override
  void registerUseCase() {}
}

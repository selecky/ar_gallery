part of 'app.dart';

final _log = Logger('app_router');

final _appRouter = GoRouter(
  observers: [_AppNavigatorObserver()],
  routes: [
    GoRoute(
      path: '/',
      name: ScreenNames.home,
      builder:
          (context, state) =>
              GetIt.I.get<Widget>(instanceName: ScreenNames.home, param1: state, param2: context),
      routes: [
        GoRoute(
          path: ScreenNames.helmet,
          name: ScreenNames.helmet,
          builder:
              (context, state) => GetIt.I.get<Widget>(
                instanceName: ScreenNames.helmet,
                param1: state,
                param2: context,
              ),
        ),
      ],
    ),
  ],
);

class _AppNavigatorObserver extends NavigatorObserver {
  @override
  Future<void> didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    if (route.settings.name != null) {
      _log.info('${route.settings.name}_screen opened');
    }
  }
}

import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/auto_route_config.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRouteProvider.page, initial: true, children: [
          AutoRoute(page: OverviewRouteProvider.page),
          AutoRoute(page: HotelsRouteProvider.page),
          AutoRoute(page: FavoriteRouteProvider.page),
          AutoRoute(page: AccountRouteProvider.page),
        ])
      ];
}

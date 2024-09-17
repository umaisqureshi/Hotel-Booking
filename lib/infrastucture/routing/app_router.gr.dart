// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:hotel_booking/infrastucture/provider/account_screen_provider.dart'
    as _i1;
import 'package:hotel_booking/infrastucture/provider/favorite_screen_provider.dart'
    as _i2;
import 'package:hotel_booking/infrastucture/provider/hotels_screen_provider.dart'
    as _i3;
import 'package:hotel_booking/infrastucture/provider/main_screen_provider.dart'
    as _i4;
import 'package:hotel_booking/infrastucture/provider/overview_screen_provider.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AccountRouteProvider.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreenProvider(),
      );
    },
    FavoriteRouteProvider.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoriteScreenProvider(),
      );
    },
    HotelsRouteProvider.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HotelsScreenProvider(),
      );
    },
    MainRouteProvider.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainScreenProvider(),
      );
    },
    OverviewRouteProvider.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OverviewScreenProvider(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreenProvider]
class AccountRouteProvider extends _i6.PageRouteInfo<void> {
  const AccountRouteProvider({List<_i6.PageRouteInfo>? children})
      : super(
          AccountRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'AccountRouteProvider';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoriteScreenProvider]
class FavoriteRouteProvider extends _i6.PageRouteInfo<void> {
  const FavoriteRouteProvider({List<_i6.PageRouteInfo>? children})
      : super(
          FavoriteRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRouteProvider';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HotelsScreenProvider]
class HotelsRouteProvider extends _i6.PageRouteInfo<void> {
  const HotelsRouteProvider({List<_i6.PageRouteInfo>? children})
      : super(
          HotelsRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'HotelsRouteProvider';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainScreenProvider]
class MainRouteProvider extends _i6.PageRouteInfo<void> {
  const MainRouteProvider({List<_i6.PageRouteInfo>? children})
      : super(
          MainRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'MainRouteProvider';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OverviewScreenProvider]
class OverviewRouteProvider extends _i6.PageRouteInfo<void> {
  const OverviewRouteProvider({List<_i6.PageRouteInfo>? children})
      : super(
          OverviewRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'OverviewRouteProvider';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

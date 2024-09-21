import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/infrastucture/routing/app_router.gr.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        OverviewRouteProvider(),
        HotelsRouteProvider(),
        FavoriteRouteProvider(),
        AccountRouteProvider(),
      ],
      builder: (context, child) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: context.appColorScheme.backgroundColor,
              selectedItemColor:
                  context.appColorScheme.primary.withOpacity(0.8),
              unselectedItemColor: Colors.grey,
              currentIndex: tabRouter.activeIndex,
              onTap: (index) {
                tabRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Icon(Icons.home),
                    ),
                    label: "Overview".tr()),
                BottomNavigationBarItem(
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Icon(Icons.search),
                    ),
                    label: "Hotels".tr()),
                BottomNavigationBarItem(
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Icon(Icons.favorite_border),
                    ),
                    label: "Favorites".tr()),
                BottomNavigationBarItem(
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Icon(Icons.person),
                    ),
                    label: "Account".tr())
              ]),
        );
      },
    );
  }
}

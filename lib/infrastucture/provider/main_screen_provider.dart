import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/module/main/main_screen.dart';

@RoutePage()
class MainScreenProvider extends StatefulWidget {
  const MainScreenProvider({super.key});

  @override
  State<MainScreenProvider> createState() => _MainScreenProviderState();
}

class _MainScreenProviderState extends State<MainScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}

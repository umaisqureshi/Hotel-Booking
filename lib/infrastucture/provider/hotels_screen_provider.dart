import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/module/hotels/hotels.dart';

@RoutePage()
class HotelsScreenProvider extends StatefulWidget {
  const HotelsScreenProvider({
    super.key,
  });

  @override
  State<HotelsScreenProvider> createState() => _HotelsScreenProviderState();
}

class _HotelsScreenProviderState extends State<HotelsScreenProvider> {

  @override
  Widget build(BuildContext context) {
    return const HotelsScreen();
  }
}

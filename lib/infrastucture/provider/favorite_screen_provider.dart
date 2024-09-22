import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/module/favorite/favorite.dart';

@RoutePage()
class FavoriteScreenProvider extends StatefulWidget {
  const FavoriteScreenProvider({super.key});

  @override
  State<FavoriteScreenProvider> createState() => _FavoriteScreenProviderState();
}

class _FavoriteScreenProviderState extends State<FavoriteScreenProvider> {

  @override
  Widget build(BuildContext context) {
    return FavoriteScreen(
      key: UniqueKey(),
    );
  }
}

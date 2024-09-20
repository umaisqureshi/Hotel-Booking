import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/component/all_favorites_component.dart';
import '../../base/screen/stateful_screen.dart';

class FavoriteScreen extends StatefulScreen<FavoriteBloc> {
  const FavoriteScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _FavoriteScreenState();
  }
}

class _FavoriteScreenState extends ScreenState<FavoriteBloc> {
  @override
  void initState() {
    context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
    super.initState();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Favorite",
            style: TextStyle(
                fontSize: 16,
                color: context.appColorScheme.backgroundColor,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: context.appColorScheme.primary,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
        ),
        // backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: const GetAllFavoritesComponent());
  }
}

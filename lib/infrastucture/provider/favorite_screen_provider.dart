import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = FavoriteBloc();
            return bloc;
          },
        ),
      ],
      child: const FavoriteScreen(),
    );
  }
}

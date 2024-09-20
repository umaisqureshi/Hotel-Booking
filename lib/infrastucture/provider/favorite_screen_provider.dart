import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/favorite.dart';

@RoutePage()
class FavoriteScreenProvider extends StatefulWidget {
  const FavoriteScreenProvider({super.key});

  @override
  State<FavoriteScreenProvider> createState() => _FavoriteScreenProviderState();
}

class _FavoriteScreenProviderState extends State<FavoriteScreenProvider> {
  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = FavoriteBloc(
              getAllFavoritesUseCase: getIt.get<GetAllFavoritesUseCase>(),
              removeFavoriteUseCase: getIt.get<RemoveFavoriteUseCase>(),
            );
            return bloc;
          },
        ),
      ],
      child: const FavoriteScreen(),
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/presentation/module/dashboard/bloc/dashboard_bloc.dart';
import 'package:hotel_booking/presentation/module/dashboard/main_screen.dart';

@RoutePage()
class MainScreenProvider extends StatefulWidget {
  const MainScreenProvider({super.key});

  @override
  State<MainScreenProvider> createState() => _MainScreenProviderState();
}

class _MainScreenProviderState extends State<MainScreenProvider> {
  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) {
          final bloc = DashboardBloc(
            getAllFavoritesUseCase: getIt.get<GetAllFavoritesUseCase>(),
            removeFavoriteUseCase: getIt.get<RemoveFavoriteUseCase>(),
            getHotelUseCase: getIt.get<GetHotelsUseCase>(),
            addToFavoriteUseCase: getIt.get<AddToFavoriteUseCase>(),
          );
          return bloc;
        },
      ),
    ], child: const MainScreen());
  }
}

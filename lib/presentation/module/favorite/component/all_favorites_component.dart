import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/base/widget/error_widget_componet.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/widget/favorite_list_widget.dart';
import 'package:hotel_booking/presentation/widget/error_widget.dart';
import 'package:hotel_booking/presentation/widget/loading_indicator.dart';

class GetAllFavoritesComponent extends ErrorWidgetHandlerComponent<FavoriteBloc,
    FavoriteState, GetAllFavoriteState, FavoriteErrorState> {
  const GetAllFavoritesComponent({super.key});
  @override
  Widget buildComponent(BuildContext context, GetAllFavoriteState state) {
    if (state.favorites.isEmpty) {
      return Center(
        child: Text(
          "No Favorites".tr(),
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
      );
    } else {
      return FavoriteListWidget(
        hotels: state.favorites.reversed,
      );
    }
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const LoadingIndicator();
  }

  @override
  Widget buildError(BuildContext context, FavoriteErrorState errorState) {
    return ErrorScreenWidget(
      onPressed: () {
        context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
      },
    );
  }
}

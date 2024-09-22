import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/component/all_favorites_component.dart';
import 'package:hotel_booking/presentation/utils/app_alerts.dart';
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
  final AppAlerts alerts = AppAlerts();
  @override


  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Favorites".tr(),
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

  @override
  void onListenableState(BuildContext context, Object? state) {
    super.onListenableState(context, state);
    if (state is FavoriteSuccessfullyRemovedState) {
      alerts.showSnackBar(context, "Successfully removed from Favorites".tr());
    }
    if (state is FavoriteRemovedConfirmationState) {
      alerts.showAlertDialog(
          context, "Do you really want to remove it from favorites?".tr(), () {
        context
            .read<FavoriteBloc>()
            .add(RemoveFavoriteEvent(hotelId: state.hotelId));
        Navigator.of(context).pop();
      }, "Remove".tr());
    }
  }
}

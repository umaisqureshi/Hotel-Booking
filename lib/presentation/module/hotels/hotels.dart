import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import 'package:hotel_booking/presentation/module/hotels/components/all_hotels_component.dart';
import 'package:hotel_booking/presentation/utils/app_alerts.dart';
import '../../base/screen/stateful_screen.dart';

class HotelsScreen extends StatefulScreen<HotelBloc> {
  const HotelsScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _HotelsScreenState();
  }
}

class _HotelsScreenState extends ScreenState<HotelBloc> {
  final AppAlerts alerts = AppAlerts();
  @override
  void initState() {
    context.read<HotelBloc>().add(GetAllHotelsEvent());
    super.initState();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hotels",
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
        extendBodyBehindAppBar: true,
        body: const GetAllHotelsComponent());
  }

  @override
  void onListenableState(BuildContext context, Object? state) {
    super.onListenableState(context, state);
    if (state is HotelAlreadyExistState) {
      alerts.showSnackBar(context, "Already in Favorites");
    }
    if (state is HotelAddedSuccessfullyState) {
      alerts.showSnackBar(context, "Successfully added to Favorites");
    }
  }
}

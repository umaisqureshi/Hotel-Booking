import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/all_hotels_list_widget.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/hotel_view_screen.dart';
import 'package:hotel_booking/presentation/widget/error_widget.dart';
import 'package:hotel_booking/presentation/base/widget/error_widget_componet.dart';
import 'package:hotel_booking/presentation/widget/loading_indicator.dart';

class GetAllHotelsComponent extends ErrorWidgetHandlerComponent<HotelBloc,
    HotelsState, HotelsLoadedState, HotelErrorState> {
  const GetAllHotelsComponent({super.key});

  @override
  Widget buildComponent(BuildContext context, HotelsLoadedState state) {
    return HotelViewScreen(state: state);
  }

  @override
  Widget buildError(BuildContext context, HotelErrorState errorState) {
    return ErrorScreenWidget(
      onPressed: () {
        context.read<HotelBloc>().add(GetAllHotelsEvent());
      },
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const LoadingIndicator();
  }
}

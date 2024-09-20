import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/module/favorite/widget/favorite_card_widget.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';

class FavoriteListWidget extends StatefulWidget {
  final List<Hotel> hotels;
  const FavoriteListWidget({super.key, required this.hotels});

  @override
  State<FavoriteListWidget> createState() => _FavoriteListWidgetState();
}

class _FavoriteListWidgetState extends State<FavoriteListWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      displacement: 80,
      durations:
          const RefreshIndicatorDurations(cancelDuration: Duration(seconds: 2)),
      onRefresh: () async {
        context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
      },
      backgroundColor: Colors.white,
      indicatorBuilder: (context, controller) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircularProgressIndicator(
            color: context.appColorScheme.primary,
          ),
        );
      },
      child: ListView.builder(
          itemCount: widget.hotels.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return FavoriteCardWidget(
              hotel: widget.hotels[index],
            );
          }),
    );
  }
}

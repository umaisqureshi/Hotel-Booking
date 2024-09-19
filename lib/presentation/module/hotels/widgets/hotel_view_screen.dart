import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/all_hotels_list_widget.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/hotel_count_widget.dart';

class HotelViewScreen extends StatelessWidget {
  final HotelsLoadedState state;
  const HotelViewScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        HotelCountWidget(count: state.HotelCount),
        const SizedBox(
          height: 5,
        ),
        HotelListWidget(hotels: state.hotels),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/hotal_card_widget.dart';

class HotelListWidget extends StatefulWidget {
  final List<Hotel> hotels;
  const HotelListWidget({super.key, required this.hotels});

  @override
  State<HotelListWidget> createState() => _HotelListWidgetState();
}

class _HotelListWidgetState extends State<HotelListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.hotels.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return HotelCardWidget(
            hotel: widget.hotels[index],
          );
        });
  }
}

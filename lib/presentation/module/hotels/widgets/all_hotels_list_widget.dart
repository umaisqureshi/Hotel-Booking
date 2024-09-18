import 'package:flutter/material.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

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
        itemBuilder: (context, index) {
          return Text(widget.hotels[index].name ?? "Undefined");
        });
  }
}

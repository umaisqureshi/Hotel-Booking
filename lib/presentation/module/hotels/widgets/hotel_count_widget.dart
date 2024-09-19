import 'package:flutter/material.dart';

class HotelCountWidget extends StatelessWidget {
  const HotelCountWidget({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        child: Text(
          "$count hotels for Mallorca",
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff222222)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

class HotelDetailWidget extends StatelessWidget {
  const HotelDetailWidget({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${hotel.bestOffer?.travelDate?.days ?? 0} Days | ${hotel.bestOffer?.travelDate?.nights ?? 0} Nights",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff222222)),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 200),
                child: Text(
                  "${hotel.bestOffer?.rooms?.overall?.name}",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff222222)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff222222),
                      ),
                      children: [
                        TextSpan(
                          text:
                              "${hotel.bestOffer?.rooms?.overall?.adultCount ?? 0} Adults",
                          style: const TextStyle(
                              // You can set a different style for "Adults, " if desired
                              ),
                        ),
                        if (hotel.bestOffer?.rooms?.overall?.childrenCount != 0)
                          TextSpan(
                            text:
                                ", ${hotel.bestOffer?.rooms?.overall?.childrenCount ?? 0} Children",
                            style: const TextStyle(
                                // You can set a different style for "Children" if desired
                                ),
                          ),
                      ],
                    ),
                  ),
                  if (hotel.bestOffer?.flightIncluded ?? false)
                    const Text(
                      " | Flight included",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff222222)),
                    ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff222222),
                  ),
                  children: [
                    const TextSpan(
                      text: "from ",
                    ),
                    TextSpan(
                      text: "${hotel.analytics?.selectItemItem0?.price ?? 0}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20 // Make price bold for emphasis
                          ),
                    ),
                    TextSpan(
                      text:
                          " ${hotel.analytics?.selectItemItem0?.currency ?? "€"}",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

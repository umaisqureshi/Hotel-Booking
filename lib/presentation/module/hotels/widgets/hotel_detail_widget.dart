import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/presentation.dart';

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
                      text: "${hotel.bestOffer?.travelDate?.days ?? 0} ",
                    ),
                    TextSpan(
                      text: "Days".tr(),
                    ),
                    TextSpan(
                      text: " | ${hotel.bestOffer?.travelDate?.nights ?? 0} ",
                    ),
                    TextSpan(
                      text: "Nights".tr(),
                    ),
                  ],
                ),
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
                              "${hotel.bestOffer?.rooms?.overall?.adultCount ?? 0} ",
                        ),
                        TextSpan(
                          text: "Adults".tr(),
                        ),
                        if (hotel.bestOffer?.rooms?.overall?.childrenCount != 0)
                          TextSpan(
                            text:
                                ", ${hotel.bestOffer?.rooms?.overall?.childrenCount ?? 0} , ",
                          ),
                        if (hotel.bestOffer?.rooms?.overall?.childrenCount != 0)
                          TextSpan(
                            text: "Children".tr(),
                          ),
                      ],
                    ),
                  ),
                  if (hotel.bestOffer?.flightIncluded ?? false)
                    Text(
                      " | Flight included".tr(),
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
                    TextSpan(
                      text: "from".tr(),
                    ),
                    TextSpan(
                      text: " ${hotel.analytics?.selectItemItem0?.price ?? 0}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20 // Make price bold for emphasis
                          ),
                    ),
                    TextSpan(
                      text:
                          "${hotel.analytics?.selectItemItem0?.currency?.tr()}",
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

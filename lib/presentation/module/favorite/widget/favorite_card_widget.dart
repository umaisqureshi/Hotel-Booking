import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:hotel_booking/presentation/widget/animated_rating_widget.dart';
import 'package:hotel_booking/presentation/widget/botton_widget.dart';
import 'package:hotel_booking/presentation/widget/cache_network_image.dart';

class FavoriteCardWidget extends StatelessWidget {
  final Hotel hotel;
  const FavoriteCardWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.45,
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            color: context.appColorScheme.backgroundColor,
            shape: BoxShape.rectangle),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.zero,
              height: MediaQuery.sizeOf(context).height * 0.25,
              width: MediaQuery.sizeOf(context).width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  color: context.appColorScheme.primary,
                  shape: BoxShape.rectangle),
              child: Stack(
                children: [
                  cachedNetworkImage(hotel.images?.first.large ?? "", 5.0),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: InkWell(
                        onTap: () {
                          context.read<FavoriteBloc>().add(
                              RemoveConfirmationEvent(hotelId: hotel.hotelId!));
                        },
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xff85BC39),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/svg/smiley.svg'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${hotel.ratingInfo?.score ?? 0.0} / 5.0",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      hotel.ratingInfo?.scoreDescription ?? "",
                                ),
                                TextSpan(
                                  text:
                                      " (${hotel.ratingInfo?.reviewsCount ?? 0})",
                                  style: const TextStyle(
                                    fontWeight: FontWeight
                                        .w400, // Make review count slightly less bold
                                  ),
                                ),
                                const TextSpan(
                                  text: " reviews)",
                                  style: TextStyle(
                                    fontWeight: FontWeight
                                        .w400, // Make review count slightly less bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: animatedRatingStars(hotel.ratingInfo?.score ?? 0.0),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Text(
                      hotel.name ?? "Undefined",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff222222)),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Text(
                      hotel.destination ?? "Location Undefined",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff595959)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ButtonWidget(
                text: "To the hotel",
                onPress: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

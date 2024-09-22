import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/presentation.dart';

class RatingCountWidget extends StatelessWidget {
  const RatingCountWidget({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset('assets/images/svg/smiley.svg'),
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
                    text: hotel.ratingInfo?.scoreDescription ?? "",
                  ),
                  TextSpan(
                    text: " (${hotel.ratingInfo?.reviewsCount ?? 0} ",
                    style: const TextStyle(
                      fontWeight: FontWeight
                          .w400, // Make review count slightly less bold
                    ),
                  ),
                  TextSpan(
                    text: "reviews".tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight
                          .w400, // Make review count slightly less bold
                    ),
                  ),
                  const TextSpan(
                    text: ")",
                    style: TextStyle(
                      fontWeight: FontWeight
                          .w400, // Make review count slightly less bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

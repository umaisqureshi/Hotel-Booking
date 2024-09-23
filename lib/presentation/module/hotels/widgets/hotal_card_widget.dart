import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/presentation.dart';

class HotelCardWidget extends StatelessWidget {
  final Hotel hotel;
  const HotelCardWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.51,
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
        child: SingleChildScrollView(
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
                child: cachedNetworkImage(hotel.images?.first.large ?? "", 5.0),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    animatedRatingStars(hotel.ratingInfo?.score ?? 0.0),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset('assets/images/svg/info.svg'),
                  ],
                ),
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
              HotelDetailWidget(hotel: hotel),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ButtonWidget(
                  text: "Add to Favorite".tr(),
                  onPress: () {
                    context
                        .read<HotelBloc>()
                        .add(AddToFavoriteEvent(hotel: hotel));
                    context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:hotel_booking/presentation/presentation.dart';

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
        HotelCountWidget(count: state.hotelCount),
        const SizedBox(
          height: 5,
        ),
        HotelListWidget(hotels: state.hotels),
      ],
    );
  }
}

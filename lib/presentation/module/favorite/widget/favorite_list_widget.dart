import 'package:hotel_booking/presentation/presentation.dart';

class FavoriteListWidget extends StatefulWidget {
  final Iterable<Hotel> hotels;
  const FavoriteListWidget({super.key, required this.hotels});

  @override
  State<FavoriteListWidget> createState() => _FavoriteListWidgetState();
}

class _FavoriteListWidgetState extends State<FavoriteListWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      displacement: 80,
      durations:
          const RefreshIndicatorDurations(cancelDuration: Duration(seconds: 2)),
      onRefresh: () async {
        context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
      },
      backgroundColor: Colors.white,
      indicatorBuilder: (context, controller) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircularProgressIndicator(
            color: context.appColorScheme.primary,
          ),
        );
      },
      child: ListView.builder(
          itemCount: widget.hotels.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return FavoriteCardWidget(
              hotel: widget.hotels.toList()[index],
            );
          }),
    );
  }
}

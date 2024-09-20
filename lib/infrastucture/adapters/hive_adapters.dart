import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

class HiveAdapters {
  Future<void> initAdapters() async {
    Hive.registerAdapter(HotelAdapter());
    Hive.registerAdapter(AnalyticsAdapter());
    Hive.registerAdapter(SelectItemItem0Adapter());
    Hive.registerAdapter(BestOfferAdapter());
    Hive.registerAdapter(RoomsAdapter());
    Hive.registerAdapter(OverallAdapter());
    Hive.registerAdapter(PricesAndOccupancyAdapter());
    Hive.registerAdapter(TravelDateAdapter());
    Hive.registerAdapter(ImageAdapter());
    Hive.registerAdapter(RatingInfoAdapter());
  }
}

import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:path_provider/path_provider.dart' as path;

class HiveAdapters {
  Future<void> initAdapters() async {
    Directory directory = await path.getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
    Hive.registerAdapter(HotelAdapter());
    Hive.registerAdapter(AnalyticsAdapter());
    Hive.registerAdapter(SelectItemItem0Adapter());
    Hive.registerAdapter(BestOfferAdapter());
    Hive.registerAdapter(RoomsAdapter());
    Hive.registerAdapter(OverallAdapter());
    Hive.registerAdapter(PricesAndOccupancyAdapter());
    Hive.registerAdapter(TravelDateAdapter());
    Hive.registerAdapter(ImageEntityAdapter());
    Hive.registerAdapter(RatingInfoAdapter());
  }
}

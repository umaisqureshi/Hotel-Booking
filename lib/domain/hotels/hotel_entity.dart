import 'package:hotel_booking/domain/base/entity.dart';
import 'package:hive/hive.dart';
part 'hotel_entity.g.dart';

class HotelEntity extends Entity {
  List<Hotel> hotels;
  int hotelCount;

  HotelEntity({
    required this.hotelCount,
    required this.hotels,
  });
}

@HiveType(typeId: 0)
class Hotel extends HiveObject implements Entity {
  @HiveField(0)
  Analytics? analytics;

  @HiveField(1)
  BestOffer? bestOffer;

  @HiveField(2)
  int? category;

  @HiveField(3)
  String? destination;

  @HiveField(4)
  String? hotelId;

  @HiveField(5)
  List<ImageEntity>? images;

  @HiveField(6)
  String? name;

  @HiveField(7)
  RatingInfo? ratingInfo;

  Hotel({
    required this.analytics,
    required this.bestOffer,
    required this.category,
    required this.destination,
    required this.hotelId,
    required this.images,
    required this.name,
    required this.ratingInfo,
  });
}

@HiveType(typeId: 1)
class Analytics extends HiveObject implements Entity {
  @HiveField(0)
  SelectItemItem0? selectItemItem0;

  Analytics({
    required this.selectItemItem0,
  });
}

@HiveType(typeId: 2)
class SelectItemItem0 extends HiveObject implements Entity {
  @HiveField(0)
  String? currency;

  @HiveField(1)
  String? itemCategory;

  @HiveField(2)
  String? itemCategory2;

  @HiveField(3)
  String? itemId;

  @HiveField(4)
  String? itemListName;

  @HiveField(5)
  String? itemName;

  @HiveField(6)
  String? itemRooms;

  @HiveField(7)
  String? price;

  @HiveField(8)
  String? quantity;

  SelectItemItem0({
    required this.currency,
    required this.itemCategory,
    required this.itemCategory2,
    required this.itemId,
    required this.itemListName,
    required this.itemName,
    required this.itemRooms,
    required this.price,
    required this.quantity,
  });
}

@HiveType(typeId: 3)
class BestOffer extends HiveObject implements Entity {
  @HiveField(0)
  int? includedTravelDiscount;

  @HiveField(1)
  int? originalTravelPrice;

  @HiveField(2)
  int? simplePricePerPerson;

  @HiveField(3)
  int? total;

  @HiveField(4)
  int? travelPrice;

  @HiveField(5)
  bool? flightIncluded;

  @HiveField(6)
  Rooms? rooms;

  @HiveField(7)
  TravelDate? travelDate;

  BestOffer({
    required this.includedTravelDiscount,
    required this.originalTravelPrice,
    required this.simplePricePerPerson,
    required this.total,
    required this.travelPrice,
    required this.flightIncluded,
    required this.rooms,
    required this.travelDate,
  });
}

@HiveType(typeId: 4)
class Rooms extends HiveObject implements Entity {
  @HiveField(0)
  Overall? overall;

  @HiveField(1)
  List<PricesAndOccupancy>? pricesAndOccupancy;

  Rooms({
    required this.overall,
    required this.pricesAndOccupancy,
  });
}

@HiveType(typeId: 5)
class Overall extends HiveObject implements Entity {
  @HiveField(0)
  String? boarding;

  @HiveField(1)
  String? name;

  @HiveField(2)
  int? adultCount;

  @HiveField(3)
  int? childrenCount;

  @HiveField(4)
  int? quantity;

  @HiveField(5)
  bool? sameBoarding;

  @HiveField(6)
  bool? sameRoomGroups;

  Overall({
    required this.boarding,
    required this.name,
    required this.adultCount,
    required this.childrenCount,
    required this.quantity,
    required this.sameBoarding,
    required this.sameRoomGroups,
  });
}

@HiveType(typeId: 6)
class PricesAndOccupancy extends HiveObject implements Entity {
  @HiveField(0)
  int? adultCount;

  @HiveField(1)
  int? childrenCount;

  @HiveField(2)
  String? groupIdentifier;

  @HiveField(3)
  int? simplePricePerPerson;

  @HiveField(4)
  int? total;

  PricesAndOccupancy({
    required this.adultCount,
    required this.childrenCount,
    required this.groupIdentifier,
    required this.simplePricePerPerson,
    required this.total,
  });
}

@HiveType(typeId: 7)
class TravelDate extends HiveObject implements Entity {
  @HiveField(0)
  int? days;

  @HiveField(1)
  int? nights;

  TravelDate({
    required this.days,
    required this.nights,
  });
}

@HiveType(typeId: 8)
class ImageEntity extends HiveObject implements Entity {
  @HiveField(0)
  String? large;

  @HiveField(1)
  String? small;

  ImageEntity({
    required this.large,
    required this.small,
  });
}

@HiveType(typeId: 9)
class RatingInfo extends HiveObject implements Entity {
  @HiveField(0)
  int? recommendationRate;

  @HiveField(1)
  int? reviewsCount;

  @HiveField(2)
  double? score;

  @HiveField(3)
  String? scoreDescription;

  RatingInfo({
    required this.recommendationRate,
    required this.reviewsCount,
    required this.score,
    required this.scoreDescription,
  });
}

// class Hotel extends Entity {
//   Analytics? analytics;
//   BestOffer? bestOffer;
//   int? category;
//   String? destination;
//   String? hotelId;
//   List<Image>? images;
//   String? name;
//   RatingInfo? ratingInfo;
//
//   Hotel({
//     required this.analytics,
//     required this.bestOffer,
//     required this.category,
//     required this.destination,
//     required this.hotelId,
//     required this.images,
//     required this.name,
//     required this.ratingInfo,
//   });
// }
//
// class Analytics extends Entity {
//   SelectItemItem0? selectItemItem0;
//
//   Analytics({
//     required this.selectItemItem0,
//   });
// }
//
// class SelectItemItem0 extends Entity {
//   String? currency;
//   String? itemCategory;
//   String? itemCategory2;
//   String? itemId;
//   String? itemListName;
//   String? itemName;
//   String? itemRooms;
//   String? price;
//   String? quantity;
//
//   SelectItemItem0({
//     required this.currency,
//     required this.itemCategory,
//     required this.itemCategory2,
//     required this.itemId,
//     required this.itemListName,
//     required this.itemName,
//     required this.itemRooms,
//     required this.price,
//     required this.quantity,
//   });
// }
//
// class BestOffer extends Entity {
//   int? includedTravelDiscount;
//   int? originalTravelPrice;
//   int? simplePricePerPerson;
//   int? total;
//   int? travelPrice;
//   bool? flightIncluded;
//   Rooms? rooms;
//   TravelDate? travelDate;
//
//   BestOffer({
//     required this.includedTravelDiscount,
//     required this.originalTravelPrice,
//     required this.simplePricePerPerson,
//     required this.total,
//     required this.travelPrice,
//     required this.flightIncluded,
//     required this.rooms,
//     required this.travelDate,
//   });
// }
//
// class Rooms extends Entity {
//   Overall? overall;
//   List<PricesAndOccupancy>? pricesAndOccupancy;
//
//   Rooms({
//     required this.overall,
//     required this.pricesAndOccupancy,
//   });
// }
//
// class Overall extends Entity {
//   String? boarding;
//   String? name;
//   int? adultCount;
//   int? childrenCount;
//   int? quantity;
//   bool? sameBoarding;
//   bool? sameRoomGroups;
//
//   Overall({
//     required this.boarding,
//     required this.name,
//     required this.adultCount,
//     required this.childrenCount,
//     required this.quantity,
//     required this.sameBoarding,
//     required this.sameRoomGroups,
//   });
// }
//
// class PricesAndOccupancy extends Entity {
//   int? adultCount;
//   int? childrenCount;
//   String? groupIdentifier;
//   int? simplePricePerPerson;
//   int? total;
//
//   PricesAndOccupancy({
//     required this.adultCount,
//     required this.childrenCount,
//     required this.groupIdentifier,
//     required this.simplePricePerPerson,
//     required this.total,
//   });
// }
//
// class TravelDate extends Entity {
//   int? days;
//   int? nights;
//
//   TravelDate({
//     required this.days,
//     required this.nights,
//   });
// }
//
// class Image extends Entity {
//   String? large;
//   String? small;
//
//   Image({
//     required this.large,
//     required this.small,
//   });
// }
//
// class RatingInfo extends Entity {
//   int? recommendationRate;
//   int? reviewsCount;
//   double? score;
//   String? scoreDescription;
//
//   RatingInfo({
//     required this.recommendationRate,
//     required this.reviewsCount,
//     required this.score,
//     required this.scoreDescription,
//   });
// }

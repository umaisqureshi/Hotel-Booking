import 'package:hotel_booking/domain/base/entity.dart';

class HotelEntity extends Entity {
  List<Hotel> hotels;

  // List<Filter> filters;
  int hotelCount;
  // Meta meta;
  // UsedSearchRequest usedSearchRequest;

  HotelEntity({
    //   required this.filters,
   required this.hotelCount,
    //  required this.meta,
    required this.hotels,
    //   required this.usedSearchRequest,
  });
}

class Hotel extends Entity {
  Analytics? analytics;
//  List<dynamic> badges;
  BestOffer? bestOffer;
  int? category;
  // CategoryType categoryType;
  String? destination;
  String? hotelId;
  List<Image>? images;
  // double latitude;
  // double longitude;
  String? name;
  RatingInfo? ratingInfo;

  Hotel({
    required this.analytics,
    //  required this.badges,
    required this.bestOffer,
    required this.category,
    // required this.categoryType,
    required this.destination,
    required this.hotelId,
    required this.images,
    //  required this.latitude,
    //  required this.longitude,
    required this.name,
    required this.ratingInfo,
  });
}

class Analytics extends Entity {
  SelectItemItem0? selectItemItem0;

  Analytics({
    required this.selectItemItem0,
  });
}

class SelectItemItem0 extends Entity {
  String? currency;
  String? itemCategory;
  String? itemCategory2;
  String? itemId;
  String? itemListName;
  String? itemName;
  String? itemRooms;
  String? price;
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

class BestOffer extends Entity {
  // dynamic appliedTravelDiscount;
  // List<dynamic> detailedPricePerPerson;
  int? includedTravelDiscount;
  int? originalTravelPrice;
  int? simplePricePerPerson;
  int? total;
  int? travelPrice;
  bool? flightIncluded;
  Rooms? rooms;
  TravelDate? travelDate;

  BestOffer({
    //  required this.appliedTravelDiscount,
    //  required this.detailedPricePerPerson,
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

class Rooms extends Entity {
  Overall? overall;
  List<PricesAndOccupancy>? pricesAndOccupancy;
  // List<RoomGroup> roomGroups;

  Rooms({
    required this.overall,
    required this.pricesAndOccupancy,
    // required this.roomGroups,
  });
}

class Overall extends Entity {
  String? boarding;
  String? name;
  int? adultCount;
  // List<dynamic> childrenAges;
  int? childrenCount;
  int? quantity;
  bool? sameBoarding;
  bool? sameRoomGroups;

  Overall({
    required this.boarding,
    required this.name,
    required this.adultCount,
    //   required this.childrenAges,
    required this.childrenCount,
    required this.quantity,
    required this.sameBoarding,
    required this.sameRoomGroups,
  });
}

// class OverallAttribute extends Entity {
//   Id id;
//   Name name;
//   dynamic value;
//   bool isUnique;
//
//   OverallAttribute({
//     required this.id,
//     required this.name,
//     required this.value,
//     required this.isUnique,
//   });
//
// }

class PricesAndOccupancy extends Entity {
  int? adultCount;
  // List<dynamic> childrenAges;
  int? childrenCount;
  // List<dynamic> detailedPricePerPerson;
  String? groupIdentifier;
  int? simplePricePerPerson;
  int? total;

  PricesAndOccupancy({
    required this.adultCount,
    //   required this.childrenAges,
    required this.childrenCount,
    //   required this.detailedPricePerPerson,
    required this.groupIdentifier,
    required this.simplePricePerPerson,
    required this.total,
  });
}

// class RoomGroup extends Entity {
//  // List<OverallAttribute> attributes;
//   String boarding;
//   String name;
//   String? detailedDescription;
//   String groupIdentifier;
//   int quantity;
//
//   RoomGroup({
//    // required this.attributes,
//     required this.boarding,
//     required this.name,
//     required this.detailedDescription,
//     required this.groupIdentifier,
//     required this.quantity,
//   });
//
// }

class TravelDate extends Entity {
  int? days;
  int? nights;
//  DateTime departureDate;

//  DateTime returnDate;

  TravelDate({
    required this.days,
//    required this.departureDate,
    required this.nights,
//    required this.returnDate,
  });
}

class Image extends Entity {
  String? large;
  String? small;

  Image({
    required this.large,
    required this.small,
  });
}

class RatingInfo extends Entity {
  int? recommendationRate;
  int? reviewsCount;
  double? score;
  String? scoreDescription;

  RatingInfo({
    required this.recommendationRate,
    required this.reviewsCount,
    required this.score,
    required this.scoreDescription,
  });
}

// class Meta extends Entity {
//   Agent agent;
//   int count;
//   List<ScarcityElement> scarcityElements;
//
//   Meta({
//     required this.agent,
//     required this.count,
//     required this.scarcityElements,
//   });
//
// }

// class Agent extends Entity {
//   String availability;
//   Image image;
//   String name;
//   String telephone;
//   String text;
//   String vita;
//
//   Agent({
//     required this.availability,
//     required this.image,
//     required this.name,
//     required this.telephone,
//     required this.text,
//     required this.vita,
//   });
//
// }
//
// class ScarcityElement extends Entity {
//   String type;
//
//   ScarcityElement({
//     required this.type,
//   });
//
// }

// class UsedSearchRequest extends Entity {
//   String attributes;
//   String departureAirports;
//   DateTime departureDate;
//   DurationRangeClass durationRange;
//   DurationRangeClass priceRange;
//   DateTime returnDate;
//   List<Room> rooms;
//   String travelType;
//   String destination;
//   String sort;
//   dynamic destinationName;
//   int limit;
//   int offset;
//
//   UsedSearchRequest({
//     required this.attributes,
//     required this.departureAirports,
//     required this.departureDate,
//     required this.durationRange,
//     required this.priceRange,
//     required this.returnDate,
//     required this.rooms,
//     required this.travelType,
//     required this.destination,
//     required this.sort,
//     required this.destinationName,
//     required this.limit,
//     required this.offset,
//   });
//
// }
//
// class DurationRangeClass extends Entity {
//   String? max;
//   String? min;
//
//   DurationRangeClass({
//     required this.max,
//     required this.min,
//   });
//
// }

// class Room extends Entity {
//   int adultCount;
//   List<dynamic> childrenAges;
//
//   Room({
//     required this.adultCount,
//     required this.childrenAges,
//   });
//
// }

// enum Id {
//   IT05_BT_BA,
//   IT05_BT_BT
// }
// enum Name {
//   BALKON,
//   BALKON_TERRASSE
// }
//
// enum AvailableSpecialGroup  {
//   FLEXIBLE,
//   PROMOTION
// }
//
// enum Type {
//   CHECKBOX,
//   RADIO,
//   RANGE
// }

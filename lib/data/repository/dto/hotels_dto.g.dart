// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsDtoImpl _$$HotelsDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelsDtoImpl(
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => HotelListDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotelCount: (json['hotel-count'] as num).toInt(),
    );

Map<String, dynamic> _$$HotelsDtoImplToJson(_$HotelsDtoImpl instance) =>
    <String, dynamic>{
      'hotels': instance.hotels,
      'hotel-count': instance.hotelCount,
    };

_$HotelListDtoImpl _$$HotelListDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelListDtoImpl(
      analytics: json['analytics'] == null
          ? null
          : AnalyticsDto.fromJson(json['analytics'] as Map<String, dynamic>),
      bestOffer: json['best-offer'] == null
          ? null
          : BestOfferDto.fromJson(json['best-offer'] as Map<String, dynamic>),
      category: (json['category'] as num?)?.toInt(),
      destination: json['destination'] as String?,
      hotelId: json['hotel-id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      ratingInfo: json['rating-info'] == null
          ? null
          : RatingInfoDto.fromJson(json['rating-info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelListDtoImplToJson(_$HotelListDtoImpl instance) =>
    <String, dynamic>{
      'analytics': instance.analytics,
      'best-offer': instance.bestOffer,
      'category': instance.category,
      'destination': instance.destination,
      'hotel-id': instance.hotelId,
      'images': instance.images,
      'name': instance.name,
      'rating-info': instance.ratingInfo,
    };

_$AnalyticsDtoImpl _$$AnalyticsDtoImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsDtoImpl(
      selectItemItem0: json['select_item.item.0'] == null
          ? null
          : SelectItemItem0Dto.fromJson(
              json['select_item.item.0'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsDtoImplToJson(_$AnalyticsDtoImpl instance) =>
    <String, dynamic>{
      'select_item.item.0': instance.selectItemItem0,
    };

_$SelectItemItem0DtoImpl _$$SelectItemItem0DtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectItemItem0DtoImpl(
      currency: json['currency'] as String?,
      itemCategory: json['item-category'] as String?,
      itemCategory2: json['item-category2'] as String?,
      itemId: json['item-id'] as String?,
      itemListName: json['item-list-name'] as String?,
      itemName: json['item-name'] as String?,
      itemRooms: json['item-rooms'] as String?,
      price: json['price'] as String?,
      quantity: json['quantity'] as String?,
    );

Map<String, dynamic> _$$SelectItemItem0DtoImplToJson(
        _$SelectItemItem0DtoImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'item-category': instance.itemCategory,
      'item-category2': instance.itemCategory2,
      'item-id': instance.itemId,
      'item-list-name': instance.itemListName,
      'item-name': instance.itemName,
      'item-rooms': instance.itemRooms,
      'price': instance.price,
      'quantity': instance.quantity,
    };

_$BestOfferDtoImpl _$$BestOfferDtoImplFromJson(Map<String, dynamic> json) =>
    _$BestOfferDtoImpl(
      includedTravelDiscount:
          (json['included-travel-discount'] as num?)?.toInt(),
      originalTravelPrice: (json['original-travel-price'] as num?)?.toInt(),
      simplePricePerPerson: (json['simple-price-per-person'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      travelPrice: (json['travel-price'] as num?)?.toInt(),
      flightIncluded: json['flight-included'] as bool?,
      rooms: json['rooms'] == null
          ? null
          : RoomsDto.fromJson(json['rooms'] as Map<String, dynamic>),
      travelDate: json['travel-date'] == null
          ? null
          : TravelDateDto.fromJson(json['travel-date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BestOfferDtoImplToJson(_$BestOfferDtoImpl instance) =>
    <String, dynamic>{
      'included-travel-discount': instance.includedTravelDiscount,
      'original-travel-price': instance.originalTravelPrice,
      'simple-price-per-person': instance.simplePricePerPerson,
      'total': instance.total,
      'travel-price': instance.travelPrice,
      'flight-included': instance.flightIncluded,
      'rooms': instance.rooms,
      'travel-date': instance.travelDate,
    };

_$RoomsDtoImpl _$$RoomsDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomsDtoImpl(
      overall: json['overall'] == null
          ? null
          : OverallDto.fromJson(json['overall'] as Map<String, dynamic>),
      pricesAndOccupancy: (json['prices-and-occupancy'] as List<dynamic>?)
          ?.map(
              (e) => PricesAndOccupancyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomsDtoImplToJson(_$RoomsDtoImpl instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'prices-and-occupancy': instance.pricesAndOccupancy,
    };

_$OverallDtoImpl _$$OverallDtoImplFromJson(Map<String, dynamic> json) =>
    _$OverallDtoImpl(
      boarding: json['boarding'] as String?,
      name: json['name'] as String?,
      adultCount: (json['adult-count'] as num?)?.toInt(),
      childrenCount: (json['children-count'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      sameBoarding: json['same-boarding'] as bool?,
      sameRoomGroups: json['same-room-groups'] as bool?,
    );

Map<String, dynamic> _$$OverallDtoImplToJson(_$OverallDtoImpl instance) =>
    <String, dynamic>{
      'boarding': instance.boarding,
      'name': instance.name,
      'adult-count': instance.adultCount,
      'children-count': instance.childrenCount,
      'quantity': instance.quantity,
      'same-boarding': instance.sameBoarding,
      'same-room-groups': instance.sameRoomGroups,
    };

_$PricesAndOccupancyDtoImpl _$$PricesAndOccupancyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PricesAndOccupancyDtoImpl(
      adultCount: (json['adult-count'] as num?)?.toInt(),
      childrenCount: (json['children-count'] as num?)?.toInt(),
      groupIdentifier: json['group-identifier'] as String?,
      simplePricePerPerson: (json['simple-price-per-person'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PricesAndOccupancyDtoImplToJson(
        _$PricesAndOccupancyDtoImpl instance) =>
    <String, dynamic>{
      'adult-count': instance.adultCount,
      'children-count': instance.childrenCount,
      'group-identifier': instance.groupIdentifier,
      'simple-price-per-person': instance.simplePricePerPerson,
      'total': instance.total,
    };

_$TravelDateDtoImpl _$$TravelDateDtoImplFromJson(Map<String, dynamic> json) =>
    _$TravelDateDtoImpl(
      days: (json['days'] as num?)?.toInt(),
      nights: (json['nights'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TravelDateDtoImplToJson(_$TravelDateDtoImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'nights': instance.nights,
    };

_$ImageDtoImpl _$$ImageDtoImplFromJson(Map<String, dynamic> json) =>
    _$ImageDtoImpl(
      large: json['large'] as String?,
      small: json['small'] as String?,
    );

Map<String, dynamic> _$$ImageDtoImplToJson(_$ImageDtoImpl instance) =>
    <String, dynamic>{
      'large': instance.large,
      'small': instance.small,
    };

_$RatingInfoDtoImpl _$$RatingInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$RatingInfoDtoImpl(
      recommendationRate: (json['recommendation-rate'] as num?)?.toInt(),
      reviewsCount: (json['reviews-count'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      scoreDescription: json['score-description'] as String?,
    );

Map<String, dynamic> _$$RatingInfoDtoImplToJson(_$RatingInfoDtoImpl instance) =>
    <String, dynamic>{
      'recommendation-rate': instance.recommendationRate,
      'reviews-count': instance.reviewsCount,
      'score': instance.score,
      'score-description': instance.scoreDescription,
    };

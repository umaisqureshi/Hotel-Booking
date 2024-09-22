import 'package:hotel_booking/data/data.dart';

part 'hotels_dto.freezed.dart';
part 'hotels_dto.g.dart';

@freezed
class HotelsDto with _$HotelsDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory HotelsDto(
      {required List<HotelListDto> hotels,
      required int hotelCount}) = _HotelsDto;
  factory HotelsDto.fromJson(Map<String, dynamic> json) =>
      _$HotelsDtoFromJson(json);
}

@freezed
class HotelListDto with _$HotelListDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory HotelListDto(
      {AnalyticsDto? analytics,
      BestOfferDto? bestOffer,
      int? category,
      String? destination,
      String? hotelId,
      List<ImageDto>? images,
      String? name,
      RatingInfoDto? ratingInfo}) = _HotelListDto;
  factory HotelListDto.fromJson(Map<String, dynamic> json) =>
      _$HotelListDtoFromJson(json);
}

@freezed
class AnalyticsDto with _$AnalyticsDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory AnalyticsDto(
      {@JsonKey(name: 'select_item.item.0')
      SelectItemItem0Dto? selectItemItem0}) = _AnalyticsDto;
  factory AnalyticsDto.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsDtoFromJson(json);
}

@freezed
class SelectItemItem0Dto with _$SelectItemItem0Dto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory SelectItemItem0Dto(
      {String? currency,
      String? itemCategory,
      String? itemCategory2,
      String? itemId,
      String? itemListName,
      String? itemName,
      String? itemRooms,
      String? price,
      String? quantity}) = _SelectItemItem0Dto;
  factory SelectItemItem0Dto.fromJson(Map<String, dynamic> json) =>
      _$SelectItemItem0DtoFromJson(json);
}

@freezed
class BestOfferDto with _$BestOfferDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory BestOfferDto(
      {int? includedTravelDiscount,
      int? originalTravelPrice,
      int? simplePricePerPerson,
      int? total,
      int? travelPrice,
      bool? flightIncluded,
      RoomsDto? rooms,
      TravelDateDto? travelDate}) = _BestOfferDto;
  factory BestOfferDto.fromJson(Map<String, dynamic> json) =>
      _$BestOfferDtoFromJson(json);
}

@freezed
class RoomsDto with _$RoomsDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory RoomsDto(
      {OverallDto? overall,
      List<PricesAndOccupancyDto>? pricesAndOccupancy}) = _RoomsDto;
  factory RoomsDto.fromJson(Map<String, dynamic> json) =>
      _$RoomsDtoFromJson(json);
}

@freezed
class OverallDto with _$OverallDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory OverallDto(
      {String? boarding,
      String? name,
      int? adultCount,
      int? childrenCount,
      int? quantity,
      bool? sameBoarding,
      bool? sameRoomGroups}) = _OverallDto;
  factory OverallDto.fromJson(Map<String, dynamic> json) =>
      _$OverallDtoFromJson(json);
}

@freezed
class PricesAndOccupancyDto with _$PricesAndOccupancyDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory PricesAndOccupancyDto({
    int? adultCount,
    int? childrenCount,
    String? groupIdentifier,
    int? simplePricePerPerson,
    int? total,
  }) = _PricesAndOccupancyDto;
  factory PricesAndOccupancyDto.fromJson(Map<String, dynamic> json) =>
      _$PricesAndOccupancyDtoFromJson(json);
}

@freezed
class TravelDateDto with _$TravelDateDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory TravelDateDto({int? days, int? nights}) = _TravelDateDto;
  factory TravelDateDto.fromJson(Map<String, dynamic> json) =>
      _$TravelDateDtoFromJson(json);
}

@freezed
class ImageDto with _$ImageDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory ImageDto({
    String? large,
    String? small,
  }) = _ImageDto;
  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}

@freezed
class RatingInfoDto with _$RatingInfoDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory RatingInfoDto(
      {int? recommendationRate,
      int? reviewsCount,
      double? score,
      String? scoreDescription}) = _RatingInfoDto;
  factory RatingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$RatingInfoDtoFromJson(json);
}

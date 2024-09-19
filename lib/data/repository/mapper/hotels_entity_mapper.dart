import 'package:hotel_booking/data/base/entity_mapper.dart';
import 'package:hotel_booking/data/repository/dto/hotels_dto.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

class HotelsEntityMapper extends EntityMapper<HotelEntity, HotelsDto> {
  const HotelsEntityMapper();

  @override
  HotelEntity mapToEntity(HotelsDto dto) {
    return HotelEntity(
        hotelCount: dto.hotelCount,
        hotels: dto.hotels
            .map((e) => const HotelsListEntityMapper().mapToEntity(e))
            .toList());
  }
}

class HotelsListEntityMapper extends EntityMapper<Hotel, HotelListDto> {
  const HotelsListEntityMapper();

  @override
  Hotel mapToEntity(HotelListDto dto) {
    return Hotel(
        category: dto.category,
        destination: dto.destination,
        hotelId: dto.hotelId,
        name: dto.name,
        analytics: dto.analytics == null
            ? null
            : const AnalyticsEntityMapper().mapToEntity(dto.analytics!),
        bestOffer: dto.bestOffer == null
            ? null
            : const BestOfferEntityMapper().mapToEntity(dto.bestOffer!),
        images: dto.images
            ?.map((e) => const ImagesEntityMapper().mapToEntity(e))
            .toList(),
        ratingInfo: dto.ratingInfo == null
            ? null
            : const RatingInfoEntityMapper().mapToEntity(dto.ratingInfo!));
  }
}

class AnalyticsEntityMapper extends EntityMapper<Analytics, AnalyticsDto> {
  const AnalyticsEntityMapper();

  @override
  Analytics mapToEntity(AnalyticsDto dto) {
    return Analytics(
        selectItemItem0: dto.selectItemItem0 == null
            ? null
            : const SelectItemItemEntityMapper()
                .mapToEntity(dto.selectItemItem0!));
  }
}

class SelectItemItemEntityMapper
    extends EntityMapper<SelectItemItem0, SelectItemItem0Dto> {
  const SelectItemItemEntityMapper();

  @override
  SelectItemItem0 mapToEntity(SelectItemItem0Dto dto) {
    return SelectItemItem0(
        currency: dto.currency,
        itemCategory: dto.itemCategory,
        itemCategory2: dto.itemCategory2,
        itemId: dto.itemId,
        itemListName: dto.itemListName,
        itemName: dto.itemName,
        itemRooms: dto.itemRooms,
        price: dto.price,
        quantity: dto.quantity);
  }
}

class BestOfferEntityMapper extends EntityMapper<BestOffer, BestOfferDto> {
  const BestOfferEntityMapper();

  @override
  BestOffer mapToEntity(BestOfferDto dto) {
    return BestOffer(
        includedTravelDiscount: dto.includedTravelDiscount,
        originalTravelPrice: dto.originalTravelPrice,
        simplePricePerPerson: dto.simplePricePerPerson,
        total: dto.total,
        travelPrice: dto.travelPrice,
        flightIncluded: dto.flightIncluded,
        rooms: dto.rooms == null
            ? null
            : const RoomsEntityMapper().mapToEntity(dto.rooms!),
        travelDate: dto.travelDate == null
            ? null
            : const TravelDateEntityMapper().mapToEntity(dto.travelDate!));
  }
}

class RoomsEntityMapper extends EntityMapper<Rooms, RoomsDto> {
  const RoomsEntityMapper();

  @override
  Rooms mapToEntity(RoomsDto dto) {
    return Rooms(
        overall: dto.overall == null
            ? null
            : const OverallEntityMapper().mapToEntity(dto.overall!),
        pricesAndOccupancy: dto.pricesAndOccupancy
            ?.map((e) => const PricesAndOccupancyEntityMapper().mapToEntity(e))
            .toList());
  }
}

class OverallEntityMapper extends EntityMapper<Overall, OverallDto> {
  const OverallEntityMapper();

  @override
  Overall mapToEntity(OverallDto dto) {
    return Overall(
        boarding: dto.boarding,
        name: dto.name,
        adultCount: dto.adultCount,
        childrenCount: dto.childrenCount,
        quantity: dto.quantity,
        sameBoarding: dto.sameBoarding,
        sameRoomGroups: dto.sameRoomGroups);
  }
}

class PricesAndOccupancyEntityMapper
    extends EntityMapper<PricesAndOccupancy, PricesAndOccupancyDto> {
  const PricesAndOccupancyEntityMapper();

  @override
  PricesAndOccupancy mapToEntity(PricesAndOccupancyDto dto) {
    return PricesAndOccupancy(
        adultCount: dto.adultCount,
        childrenCount: dto.childrenCount,
        groupIdentifier: dto.groupIdentifier,
        simplePricePerPerson: dto.simplePricePerPerson,
        total: dto.total);
  }
}

class TravelDateEntityMapper extends EntityMapper<TravelDate, TravelDateDto> {
  const TravelDateEntityMapper();

  @override
  TravelDate mapToEntity(TravelDateDto dto) {
    return TravelDate(days: dto.days, nights: dto.nights);
  }
}

class ImagesEntityMapper extends EntityMapper<Image, ImageDto> {
  const ImagesEntityMapper();

  @override
  Image mapToEntity(ImageDto dto) {
    return Image(large: dto.large, small: dto.small);
  }
}

class RatingInfoEntityMapper extends EntityMapper<RatingInfo, RatingInfoDto> {
  const RatingInfoEntityMapper();

  @override
  RatingInfo mapToEntity(RatingInfoDto dto) {
    return RatingInfo(
        recommendationRate: dto.recommendationRate,
        reviewsCount: dto.reviewsCount,
        score: dto.score,
        scoreDescription: dto.scoreDescription);
  }
}

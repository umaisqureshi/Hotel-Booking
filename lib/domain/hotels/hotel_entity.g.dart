// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelAdapter extends TypeAdapter<Hotel> {
  @override
  final int typeId = 0;

  @override
  Hotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hotel(
      analytics: fields[0] as Analytics?,
      bestOffer: fields[1] as BestOffer?,
      category: fields[2] as int?,
      destination: fields[3] as String?,
      hotelId: fields[4] as String?,
      images: (fields[5] as List?)?.cast<ImageEntity>(),
      name: fields[6] as String?,
      ratingInfo: fields[7] as RatingInfo?,
    );
  }

  @override
  void write(BinaryWriter writer, Hotel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.analytics)
      ..writeByte(1)
      ..write(obj.bestOffer)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.destination)
      ..writeByte(4)
      ..write(obj.hotelId)
      ..writeByte(5)
      ..write(obj.images)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.ratingInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AnalyticsAdapter extends TypeAdapter<Analytics> {
  @override
  final int typeId = 1;

  @override
  Analytics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Analytics(
      selectItemItem0: fields[0] as SelectItemItem0?,
    );
  }

  @override
  void write(BinaryWriter writer, Analytics obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.selectItemItem0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnalyticsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SelectItemItem0Adapter extends TypeAdapter<SelectItemItem0> {
  @override
  final int typeId = 2;

  @override
  SelectItemItem0 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SelectItemItem0(
      currency: fields[0] as String?,
      itemCategory: fields[1] as String?,
      itemCategory2: fields[2] as String?,
      itemId: fields[3] as String?,
      itemListName: fields[4] as String?,
      itemName: fields[5] as String?,
      itemRooms: fields[6] as String?,
      price: fields[7] as String?,
      quantity: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SelectItemItem0 obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.currency)
      ..writeByte(1)
      ..write(obj.itemCategory)
      ..writeByte(2)
      ..write(obj.itemCategory2)
      ..writeByte(3)
      ..write(obj.itemId)
      ..writeByte(4)
      ..write(obj.itemListName)
      ..writeByte(5)
      ..write(obj.itemName)
      ..writeByte(6)
      ..write(obj.itemRooms)
      ..writeByte(7)
      ..write(obj.price)
      ..writeByte(8)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SelectItemItem0Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BestOfferAdapter extends TypeAdapter<BestOffer> {
  @override
  final int typeId = 3;

  @override
  BestOffer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BestOffer(
      includedTravelDiscount: fields[0] as int?,
      originalTravelPrice: fields[1] as int?,
      simplePricePerPerson: fields[2] as int?,
      total: fields[3] as int?,
      travelPrice: fields[4] as int?,
      flightIncluded: fields[5] as bool?,
      rooms: fields[6] as Rooms?,
      travelDate: fields[7] as TravelDate?,
    );
  }

  @override
  void write(BinaryWriter writer, BestOffer obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.includedTravelDiscount)
      ..writeByte(1)
      ..write(obj.originalTravelPrice)
      ..writeByte(2)
      ..write(obj.simplePricePerPerson)
      ..writeByte(3)
      ..write(obj.total)
      ..writeByte(4)
      ..write(obj.travelPrice)
      ..writeByte(5)
      ..write(obj.flightIncluded)
      ..writeByte(6)
      ..write(obj.rooms)
      ..writeByte(7)
      ..write(obj.travelDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BestOfferAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomsAdapter extends TypeAdapter<Rooms> {
  @override
  final int typeId = 4;

  @override
  Rooms read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rooms(
      overall: fields[0] as Overall?,
      pricesAndOccupancy: (fields[1] as List?)?.cast<PricesAndOccupancy>(),
    );
  }

  @override
  void write(BinaryWriter writer, Rooms obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.overall)
      ..writeByte(1)
      ..write(obj.pricesAndOccupancy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OverallAdapter extends TypeAdapter<Overall> {
  @override
  final int typeId = 5;

  @override
  Overall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Overall(
      boarding: fields[0] as String?,
      name: fields[1] as String?,
      adultCount: fields[2] as int?,
      childrenCount: fields[3] as int?,
      quantity: fields[4] as int?,
      sameBoarding: fields[5] as bool?,
      sameRoomGroups: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Overall obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.boarding)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.adultCount)
      ..writeByte(3)
      ..write(obj.childrenCount)
      ..writeByte(4)
      ..write(obj.quantity)
      ..writeByte(5)
      ..write(obj.sameBoarding)
      ..writeByte(6)
      ..write(obj.sameRoomGroups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OverallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PricesAndOccupancyAdapter extends TypeAdapter<PricesAndOccupancy> {
  @override
  final int typeId = 6;

  @override
  PricesAndOccupancy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PricesAndOccupancy(
      adultCount: fields[0] as int?,
      childrenCount: fields[1] as int?,
      groupIdentifier: fields[2] as String?,
      simplePricePerPerson: fields[3] as int?,
      total: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PricesAndOccupancy obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.adultCount)
      ..writeByte(1)
      ..write(obj.childrenCount)
      ..writeByte(2)
      ..write(obj.groupIdentifier)
      ..writeByte(3)
      ..write(obj.simplePricePerPerson)
      ..writeByte(4)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PricesAndOccupancyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TravelDateAdapter extends TypeAdapter<TravelDate> {
  @override
  final int typeId = 7;

  @override
  TravelDate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TravelDate(
      days: fields[0] as int?,
      nights: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TravelDate obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.days)
      ..writeByte(1)
      ..write(obj.nights);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TravelDateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageEntityAdapter extends TypeAdapter<ImageEntity> {
  @override
  final int typeId = 8;

  @override
  ImageEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImageEntity(
      large: fields[0] as String?,
      small: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImageEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.large)
      ..writeByte(1)
      ..write(obj.small);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RatingInfoAdapter extends TypeAdapter<RatingInfo> {
  @override
  final int typeId = 9;

  @override
  RatingInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RatingInfo(
      recommendationRate: fields[0] as int?,
      reviewsCount: fields[1] as int?,
      score: fields[2] as double?,
      scoreDescription: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RatingInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.recommendationRate)
      ..writeByte(1)
      ..write(obj.reviewsCount)
      ..writeByte(2)
      ..write(obj.score)
      ..writeByte(3)
      ..write(obj.scoreDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RatingInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

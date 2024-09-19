// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelsDto _$HotelsDtoFromJson(Map<String, dynamic> json) {
  return _HotelsDto.fromJson(json);
}

/// @nodoc
mixin _$HotelsDto {
  List<HotelListDto> get hotels => throw _privateConstructorUsedError;
  int get hotelCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsDtoCopyWith<HotelsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsDtoCopyWith<$Res> {
  factory $HotelsDtoCopyWith(HotelsDto value, $Res Function(HotelsDto) then) =
      _$HotelsDtoCopyWithImpl<$Res, HotelsDto>;
  @useResult
  $Res call({List<HotelListDto> hotels, int hotelCount});
}

/// @nodoc
class _$HotelsDtoCopyWithImpl<$Res, $Val extends HotelsDto>
    implements $HotelsDtoCopyWith<$Res> {
  _$HotelsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
    Object? hotelCount = null,
  }) {
    return _then(_value.copyWith(
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelListDto>,
      hotelCount: null == hotelCount
          ? _value.hotelCount
          : hotelCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelsDtoImplCopyWith<$Res>
    implements $HotelsDtoCopyWith<$Res> {
  factory _$$HotelsDtoImplCopyWith(
          _$HotelsDtoImpl value, $Res Function(_$HotelsDtoImpl) then) =
      __$$HotelsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HotelListDto> hotels, int hotelCount});
}

/// @nodoc
class __$$HotelsDtoImplCopyWithImpl<$Res>
    extends _$HotelsDtoCopyWithImpl<$Res, _$HotelsDtoImpl>
    implements _$$HotelsDtoImplCopyWith<$Res> {
  __$$HotelsDtoImplCopyWithImpl(
      _$HotelsDtoImpl _value, $Res Function(_$HotelsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
    Object? hotelCount = null,
  }) {
    return _then(_$HotelsDtoImpl(
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelListDto>,
      hotelCount: null == hotelCount
          ? _value.hotelCount
          : hotelCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$HotelsDtoImpl implements _HotelsDto {
  const _$HotelsDtoImpl(
      {required final List<HotelListDto> hotels, required this.hotelCount})
      : _hotels = hotels;

  factory _$HotelsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsDtoImplFromJson(json);

  final List<HotelListDto> _hotels;
  @override
  List<HotelListDto> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  final int hotelCount;

  @override
  String toString() {
    return 'HotelsDto(hotels: $hotels, hotelCount: $hotelCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsDtoImpl &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            (identical(other.hotelCount, hotelCount) ||
                other.hotelCount == hotelCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hotels), hotelCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsDtoImplCopyWith<_$HotelsDtoImpl> get copyWith =>
      __$$HotelsDtoImplCopyWithImpl<_$HotelsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelsDto implements HotelsDto {
  const factory _HotelsDto(
      {required final List<HotelListDto> hotels,
      required final int hotelCount}) = _$HotelsDtoImpl;

  factory _HotelsDto.fromJson(Map<String, dynamic> json) =
      _$HotelsDtoImpl.fromJson;

  @override
  List<HotelListDto> get hotels;
  @override
  int get hotelCount;
  @override
  @JsonKey(ignore: true)
  _$$HotelsDtoImplCopyWith<_$HotelsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelListDto _$HotelListDtoFromJson(Map<String, dynamic> json) {
  return _HotelListDto.fromJson(json);
}

/// @nodoc
mixin _$HotelListDto {
  AnalyticsDto? get analytics => throw _privateConstructorUsedError;
  BestOfferDto? get bestOffer => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  String? get destination => throw _privateConstructorUsedError;
  String? get hotelId => throw _privateConstructorUsedError;
  List<ImageDto>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  RatingInfoDto? get ratingInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelListDtoCopyWith<HotelListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelListDtoCopyWith<$Res> {
  factory $HotelListDtoCopyWith(
          HotelListDto value, $Res Function(HotelListDto) then) =
      _$HotelListDtoCopyWithImpl<$Res, HotelListDto>;
  @useResult
  $Res call(
      {AnalyticsDto? analytics,
      BestOfferDto? bestOffer,
      int? category,
      String? destination,
      String? hotelId,
      List<ImageDto>? images,
      String? name,
      RatingInfoDto? ratingInfo});

  $AnalyticsDtoCopyWith<$Res>? get analytics;
  $BestOfferDtoCopyWith<$Res>? get bestOffer;
  $RatingInfoDtoCopyWith<$Res>? get ratingInfo;
}

/// @nodoc
class _$HotelListDtoCopyWithImpl<$Res, $Val extends HotelListDto>
    implements $HotelListDtoCopyWith<$Res> {
  _$HotelListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analytics = freezed,
    Object? bestOffer = freezed,
    Object? category = freezed,
    Object? destination = freezed,
    Object? hotelId = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? ratingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsDto?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferDto?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsDtoCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return $AnalyticsDtoCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferDtoCopyWith<$Res>? get bestOffer {
    if (_value.bestOffer == null) {
      return null;
    }

    return $BestOfferDtoCopyWith<$Res>(_value.bestOffer!, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingInfoDtoCopyWith<$Res>? get ratingInfo {
    if (_value.ratingInfo == null) {
      return null;
    }

    return $RatingInfoDtoCopyWith<$Res>(_value.ratingInfo!, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelListDtoImplCopyWith<$Res>
    implements $HotelListDtoCopyWith<$Res> {
  factory _$$HotelListDtoImplCopyWith(
          _$HotelListDtoImpl value, $Res Function(_$HotelListDtoImpl) then) =
      __$$HotelListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AnalyticsDto? analytics,
      BestOfferDto? bestOffer,
      int? category,
      String? destination,
      String? hotelId,
      List<ImageDto>? images,
      String? name,
      RatingInfoDto? ratingInfo});

  @override
  $AnalyticsDtoCopyWith<$Res>? get analytics;
  @override
  $BestOfferDtoCopyWith<$Res>? get bestOffer;
  @override
  $RatingInfoDtoCopyWith<$Res>? get ratingInfo;
}

/// @nodoc
class __$$HotelListDtoImplCopyWithImpl<$Res>
    extends _$HotelListDtoCopyWithImpl<$Res, _$HotelListDtoImpl>
    implements _$$HotelListDtoImplCopyWith<$Res> {
  __$$HotelListDtoImplCopyWithImpl(
      _$HotelListDtoImpl _value, $Res Function(_$HotelListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analytics = freezed,
    Object? bestOffer = freezed,
    Object? category = freezed,
    Object? destination = freezed,
    Object? hotelId = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? ratingInfo = freezed,
  }) {
    return _then(_$HotelListDtoImpl(
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsDto?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferDto?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$HotelListDtoImpl implements _HotelListDto {
  const _$HotelListDtoImpl(
      {this.analytics,
      this.bestOffer,
      this.category,
      this.destination,
      this.hotelId,
      final List<ImageDto>? images,
      this.name,
      this.ratingInfo})
      : _images = images;

  factory _$HotelListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelListDtoImplFromJson(json);

  @override
  final AnalyticsDto? analytics;
  @override
  final BestOfferDto? bestOffer;
  @override
  final int? category;
  @override
  final String? destination;
  @override
  final String? hotelId;
  final List<ImageDto>? _images;
  @override
  List<ImageDto>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final RatingInfoDto? ratingInfo;

  @override
  String toString() {
    return 'HotelListDto(analytics: $analytics, bestOffer: $bestOffer, category: $category, destination: $destination, hotelId: $hotelId, images: $images, name: $name, ratingInfo: $ratingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelListDtoImpl &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.bestOffer, bestOffer) ||
                other.bestOffer == bestOffer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ratingInfo, ratingInfo) ||
                other.ratingInfo == ratingInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      analytics,
      bestOffer,
      category,
      destination,
      hotelId,
      const DeepCollectionEquality().hash(_images),
      name,
      ratingInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelListDtoImplCopyWith<_$HotelListDtoImpl> get copyWith =>
      __$$HotelListDtoImplCopyWithImpl<_$HotelListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelListDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelListDto implements HotelListDto {
  const factory _HotelListDto(
      {final AnalyticsDto? analytics,
      final BestOfferDto? bestOffer,
      final int? category,
      final String? destination,
      final String? hotelId,
      final List<ImageDto>? images,
      final String? name,
      final RatingInfoDto? ratingInfo}) = _$HotelListDtoImpl;

  factory _HotelListDto.fromJson(Map<String, dynamic> json) =
      _$HotelListDtoImpl.fromJson;

  @override
  AnalyticsDto? get analytics;
  @override
  BestOfferDto? get bestOffer;
  @override
  int? get category;
  @override
  String? get destination;
  @override
  String? get hotelId;
  @override
  List<ImageDto>? get images;
  @override
  String? get name;
  @override
  RatingInfoDto? get ratingInfo;
  @override
  @JsonKey(ignore: true)
  _$$HotelListDtoImplCopyWith<_$HotelListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsDto _$AnalyticsDtoFromJson(Map<String, dynamic> json) {
  return _AnalyticsDto.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsDto {
  @JsonKey(name: 'select_item.item.0')
  SelectItemItem0Dto? get selectItemItem0 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsDtoCopyWith<AnalyticsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDtoCopyWith<$Res> {
  factory $AnalyticsDtoCopyWith(
          AnalyticsDto value, $Res Function(AnalyticsDto) then) =
      _$AnalyticsDtoCopyWithImpl<$Res, AnalyticsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'select_item.item.0')
      SelectItemItem0Dto? selectItemItem0});

  $SelectItemItem0DtoCopyWith<$Res>? get selectItemItem0;
}

/// @nodoc
class _$AnalyticsDtoCopyWithImpl<$Res, $Val extends AnalyticsDto>
    implements $AnalyticsDtoCopyWith<$Res> {
  _$AnalyticsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectItemItem0 = freezed,
  }) {
    return _then(_value.copyWith(
      selectItemItem0: freezed == selectItemItem0
          ? _value.selectItemItem0
          : selectItemItem0 // ignore: cast_nullable_to_non_nullable
              as SelectItemItem0Dto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectItemItem0DtoCopyWith<$Res>? get selectItemItem0 {
    if (_value.selectItemItem0 == null) {
      return null;
    }

    return $SelectItemItem0DtoCopyWith<$Res>(_value.selectItemItem0!, (value) {
      return _then(_value.copyWith(selectItemItem0: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsDtoImplCopyWith<$Res>
    implements $AnalyticsDtoCopyWith<$Res> {
  factory _$$AnalyticsDtoImplCopyWith(
          _$AnalyticsDtoImpl value, $Res Function(_$AnalyticsDtoImpl) then) =
      __$$AnalyticsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'select_item.item.0')
      SelectItemItem0Dto? selectItemItem0});

  @override
  $SelectItemItem0DtoCopyWith<$Res>? get selectItemItem0;
}

/// @nodoc
class __$$AnalyticsDtoImplCopyWithImpl<$Res>
    extends _$AnalyticsDtoCopyWithImpl<$Res, _$AnalyticsDtoImpl>
    implements _$$AnalyticsDtoImplCopyWith<$Res> {
  __$$AnalyticsDtoImplCopyWithImpl(
      _$AnalyticsDtoImpl _value, $Res Function(_$AnalyticsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectItemItem0 = freezed,
  }) {
    return _then(_$AnalyticsDtoImpl(
      selectItemItem0: freezed == selectItemItem0
          ? _value.selectItemItem0
          : selectItemItem0 // ignore: cast_nullable_to_non_nullable
              as SelectItemItem0Dto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$AnalyticsDtoImpl implements _AnalyticsDto {
  const _$AnalyticsDtoImpl(
      {@JsonKey(name: 'select_item.item.0') this.selectItemItem0});

  factory _$AnalyticsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'select_item.item.0')
  final SelectItemItem0Dto? selectItemItem0;

  @override
  String toString() {
    return 'AnalyticsDto(selectItemItem0: $selectItemItem0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsDtoImpl &&
            (identical(other.selectItemItem0, selectItemItem0) ||
                other.selectItemItem0 == selectItemItem0));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectItemItem0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsDtoImplCopyWith<_$AnalyticsDtoImpl> get copyWith =>
      __$$AnalyticsDtoImplCopyWithImpl<_$AnalyticsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsDtoImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsDto implements AnalyticsDto {
  const factory _AnalyticsDto(
      {@JsonKey(name: 'select_item.item.0')
      final SelectItemItem0Dto? selectItemItem0}) = _$AnalyticsDtoImpl;

  factory _AnalyticsDto.fromJson(Map<String, dynamic> json) =
      _$AnalyticsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'select_item.item.0')
  SelectItemItem0Dto? get selectItemItem0;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsDtoImplCopyWith<_$AnalyticsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectItemItem0Dto _$SelectItemItem0DtoFromJson(Map<String, dynamic> json) {
  return _SelectItemItem0Dto.fromJson(json);
}

/// @nodoc
mixin _$SelectItemItem0Dto {
  String? get currency => throw _privateConstructorUsedError;
  String? get itemCategory => throw _privateConstructorUsedError;
  String? get itemCategory2 => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get itemListName => throw _privateConstructorUsedError;
  String? get itemName => throw _privateConstructorUsedError;
  String? get itemRooms => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectItemItem0DtoCopyWith<SelectItemItem0Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectItemItem0DtoCopyWith<$Res> {
  factory $SelectItemItem0DtoCopyWith(
          SelectItemItem0Dto value, $Res Function(SelectItemItem0Dto) then) =
      _$SelectItemItem0DtoCopyWithImpl<$Res, SelectItemItem0Dto>;
  @useResult
  $Res call(
      {String? currency,
      String? itemCategory,
      String? itemCategory2,
      String? itemId,
      String? itemListName,
      String? itemName,
      String? itemRooms,
      String? price,
      String? quantity});
}

/// @nodoc
class _$SelectItemItem0DtoCopyWithImpl<$Res, $Val extends SelectItemItem0Dto>
    implements $SelectItemItem0DtoCopyWith<$Res> {
  _$SelectItemItem0DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? itemCategory = freezed,
    Object? itemCategory2 = freezed,
    Object? itemId = freezed,
    Object? itemListName = freezed,
    Object? itemName = freezed,
    Object? itemRooms = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory: freezed == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory2: freezed == itemCategory2
          ? _value.itemCategory2
          : itemCategory2 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemListName: freezed == itemListName
          ? _value.itemListName
          : itemListName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemRooms: freezed == itemRooms
          ? _value.itemRooms
          : itemRooms // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectItemItem0DtoImplCopyWith<$Res>
    implements $SelectItemItem0DtoCopyWith<$Res> {
  factory _$$SelectItemItem0DtoImplCopyWith(_$SelectItemItem0DtoImpl value,
          $Res Function(_$SelectItemItem0DtoImpl) then) =
      __$$SelectItemItem0DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currency,
      String? itemCategory,
      String? itemCategory2,
      String? itemId,
      String? itemListName,
      String? itemName,
      String? itemRooms,
      String? price,
      String? quantity});
}

/// @nodoc
class __$$SelectItemItem0DtoImplCopyWithImpl<$Res>
    extends _$SelectItemItem0DtoCopyWithImpl<$Res, _$SelectItemItem0DtoImpl>
    implements _$$SelectItemItem0DtoImplCopyWith<$Res> {
  __$$SelectItemItem0DtoImplCopyWithImpl(_$SelectItemItem0DtoImpl _value,
      $Res Function(_$SelectItemItem0DtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? itemCategory = freezed,
    Object? itemCategory2 = freezed,
    Object? itemId = freezed,
    Object? itemListName = freezed,
    Object? itemName = freezed,
    Object? itemRooms = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$SelectItemItem0DtoImpl(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory: freezed == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory2: freezed == itemCategory2
          ? _value.itemCategory2
          : itemCategory2 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemListName: freezed == itemListName
          ? _value.itemListName
          : itemListName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemRooms: freezed == itemRooms
          ? _value.itemRooms
          : itemRooms // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$SelectItemItem0DtoImpl implements _SelectItemItem0Dto {
  const _$SelectItemItem0DtoImpl(
      {this.currency,
      this.itemCategory,
      this.itemCategory2,
      this.itemId,
      this.itemListName,
      this.itemName,
      this.itemRooms,
      this.price,
      this.quantity});

  factory _$SelectItemItem0DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectItemItem0DtoImplFromJson(json);

  @override
  final String? currency;
  @override
  final String? itemCategory;
  @override
  final String? itemCategory2;
  @override
  final String? itemId;
  @override
  final String? itemListName;
  @override
  final String? itemName;
  @override
  final String? itemRooms;
  @override
  final String? price;
  @override
  final String? quantity;

  @override
  String toString() {
    return 'SelectItemItem0Dto(currency: $currency, itemCategory: $itemCategory, itemCategory2: $itemCategory2, itemId: $itemId, itemListName: $itemListName, itemName: $itemName, itemRooms: $itemRooms, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectItemItem0DtoImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.itemCategory2, itemCategory2) ||
                other.itemCategory2 == itemCategory2) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemListName, itemListName) ||
                other.itemListName == itemListName) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemRooms, itemRooms) ||
                other.itemRooms == itemRooms) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currency,
      itemCategory,
      itemCategory2,
      itemId,
      itemListName,
      itemName,
      itemRooms,
      price,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectItemItem0DtoImplCopyWith<_$SelectItemItem0DtoImpl> get copyWith =>
      __$$SelectItemItem0DtoImplCopyWithImpl<_$SelectItemItem0DtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectItemItem0DtoImplToJson(
      this,
    );
  }
}

abstract class _SelectItemItem0Dto implements SelectItemItem0Dto {
  const factory _SelectItemItem0Dto(
      {final String? currency,
      final String? itemCategory,
      final String? itemCategory2,
      final String? itemId,
      final String? itemListName,
      final String? itemName,
      final String? itemRooms,
      final String? price,
      final String? quantity}) = _$SelectItemItem0DtoImpl;

  factory _SelectItemItem0Dto.fromJson(Map<String, dynamic> json) =
      _$SelectItemItem0DtoImpl.fromJson;

  @override
  String? get currency;
  @override
  String? get itemCategory;
  @override
  String? get itemCategory2;
  @override
  String? get itemId;
  @override
  String? get itemListName;
  @override
  String? get itemName;
  @override
  String? get itemRooms;
  @override
  String? get price;
  @override
  String? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$SelectItemItem0DtoImplCopyWith<_$SelectItemItem0DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestOfferDto _$BestOfferDtoFromJson(Map<String, dynamic> json) {
  return _BestOfferDto.fromJson(json);
}

/// @nodoc
mixin _$BestOfferDto {
  int? get includedTravelDiscount => throw _privateConstructorUsedError;
  int? get originalTravelPrice => throw _privateConstructorUsedError;
  int? get simplePricePerPerson => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get travelPrice => throw _privateConstructorUsedError;
  bool? get flightIncluded => throw _privateConstructorUsedError;
  RoomsDto? get rooms => throw _privateConstructorUsedError;
  TravelDateDto? get travelDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOfferDtoCopyWith<BestOfferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferDtoCopyWith<$Res> {
  factory $BestOfferDtoCopyWith(
          BestOfferDto value, $Res Function(BestOfferDto) then) =
      _$BestOfferDtoCopyWithImpl<$Res, BestOfferDto>;
  @useResult
  $Res call(
      {int? includedTravelDiscount,
      int? originalTravelPrice,
      int? simplePricePerPerson,
      int? total,
      int? travelPrice,
      bool? flightIncluded,
      RoomsDto? rooms,
      TravelDateDto? travelDate});

  $RoomsDtoCopyWith<$Res>? get rooms;
  $TravelDateDtoCopyWith<$Res>? get travelDate;
}

/// @nodoc
class _$BestOfferDtoCopyWithImpl<$Res, $Val extends BestOfferDto>
    implements $BestOfferDtoCopyWith<$Res> {
  _$BestOfferDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includedTravelDiscount = freezed,
    Object? originalTravelPrice = freezed,
    Object? simplePricePerPerson = freezed,
    Object? total = freezed,
    Object? travelPrice = freezed,
    Object? flightIncluded = freezed,
    Object? rooms = freezed,
    Object? travelDate = freezed,
  }) {
    return _then(_value.copyWith(
      includedTravelDiscount: freezed == includedTravelDiscount
          ? _value.includedTravelDiscount
          : includedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTravelPrice: freezed == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      simplePricePerPerson: freezed == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      travelPrice: freezed == travelPrice
          ? _value.travelPrice
          : travelPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      flightIncluded: freezed == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsDto?,
      travelDate: freezed == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsDtoCopyWith<$Res>? get rooms {
    if (_value.rooms == null) {
      return null;
    }

    return $RoomsDtoCopyWith<$Res>(_value.rooms!, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateDtoCopyWith<$Res>? get travelDate {
    if (_value.travelDate == null) {
      return null;
    }

    return $TravelDateDtoCopyWith<$Res>(_value.travelDate!, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferDtoImplCopyWith<$Res>
    implements $BestOfferDtoCopyWith<$Res> {
  factory _$$BestOfferDtoImplCopyWith(
          _$BestOfferDtoImpl value, $Res Function(_$BestOfferDtoImpl) then) =
      __$$BestOfferDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? includedTravelDiscount,
      int? originalTravelPrice,
      int? simplePricePerPerson,
      int? total,
      int? travelPrice,
      bool? flightIncluded,
      RoomsDto? rooms,
      TravelDateDto? travelDate});

  @override
  $RoomsDtoCopyWith<$Res>? get rooms;
  @override
  $TravelDateDtoCopyWith<$Res>? get travelDate;
}

/// @nodoc
class __$$BestOfferDtoImplCopyWithImpl<$Res>
    extends _$BestOfferDtoCopyWithImpl<$Res, _$BestOfferDtoImpl>
    implements _$$BestOfferDtoImplCopyWith<$Res> {
  __$$BestOfferDtoImplCopyWithImpl(
      _$BestOfferDtoImpl _value, $Res Function(_$BestOfferDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includedTravelDiscount = freezed,
    Object? originalTravelPrice = freezed,
    Object? simplePricePerPerson = freezed,
    Object? total = freezed,
    Object? travelPrice = freezed,
    Object? flightIncluded = freezed,
    Object? rooms = freezed,
    Object? travelDate = freezed,
  }) {
    return _then(_$BestOfferDtoImpl(
      includedTravelDiscount: freezed == includedTravelDiscount
          ? _value.includedTravelDiscount
          : includedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTravelPrice: freezed == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      simplePricePerPerson: freezed == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      travelPrice: freezed == travelPrice
          ? _value.travelPrice
          : travelPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      flightIncluded: freezed == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsDto?,
      travelDate: freezed == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$BestOfferDtoImpl implements _BestOfferDto {
  const _$BestOfferDtoImpl(
      {this.includedTravelDiscount,
      this.originalTravelPrice,
      this.simplePricePerPerson,
      this.total,
      this.travelPrice,
      this.flightIncluded,
      this.rooms,
      this.travelDate});

  factory _$BestOfferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestOfferDtoImplFromJson(json);

  @override
  final int? includedTravelDiscount;
  @override
  final int? originalTravelPrice;
  @override
  final int? simplePricePerPerson;
  @override
  final int? total;
  @override
  final int? travelPrice;
  @override
  final bool? flightIncluded;
  @override
  final RoomsDto? rooms;
  @override
  final TravelDateDto? travelDate;

  @override
  String toString() {
    return 'BestOfferDto(includedTravelDiscount: $includedTravelDiscount, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, total: $total, travelPrice: $travelPrice, flightIncluded: $flightIncluded, rooms: $rooms, travelDate: $travelDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferDtoImpl &&
            (identical(other.includedTravelDiscount, includedTravelDiscount) ||
                other.includedTravelDiscount == includedTravelDiscount) &&
            (identical(other.originalTravelPrice, originalTravelPrice) ||
                other.originalTravelPrice == originalTravelPrice) &&
            (identical(other.simplePricePerPerson, simplePricePerPerson) ||
                other.simplePricePerPerson == simplePricePerPerson) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.travelPrice, travelPrice) ||
                other.travelPrice == travelPrice) &&
            (identical(other.flightIncluded, flightIncluded) ||
                other.flightIncluded == flightIncluded) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.travelDate, travelDate) ||
                other.travelDate == travelDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      includedTravelDiscount,
      originalTravelPrice,
      simplePricePerPerson,
      total,
      travelPrice,
      flightIncluded,
      rooms,
      travelDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOfferDtoImplCopyWith<_$BestOfferDtoImpl> get copyWith =>
      __$$BestOfferDtoImplCopyWithImpl<_$BestOfferDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestOfferDtoImplToJson(
      this,
    );
  }
}

abstract class _BestOfferDto implements BestOfferDto {
  const factory _BestOfferDto(
      {final int? includedTravelDiscount,
      final int? originalTravelPrice,
      final int? simplePricePerPerson,
      final int? total,
      final int? travelPrice,
      final bool? flightIncluded,
      final RoomsDto? rooms,
      final TravelDateDto? travelDate}) = _$BestOfferDtoImpl;

  factory _BestOfferDto.fromJson(Map<String, dynamic> json) =
      _$BestOfferDtoImpl.fromJson;

  @override
  int? get includedTravelDiscount;
  @override
  int? get originalTravelPrice;
  @override
  int? get simplePricePerPerson;
  @override
  int? get total;
  @override
  int? get travelPrice;
  @override
  bool? get flightIncluded;
  @override
  RoomsDto? get rooms;
  @override
  TravelDateDto? get travelDate;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferDtoImplCopyWith<_$BestOfferDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsDto _$RoomsDtoFromJson(Map<String, dynamic> json) {
  return _RoomsDto.fromJson(json);
}

/// @nodoc
mixin _$RoomsDto {
  OverallDto? get overall => throw _privateConstructorUsedError;
  List<PricesAndOccupancyDto>? get pricesAndOccupancy =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsDtoCopyWith<RoomsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsDtoCopyWith<$Res> {
  factory $RoomsDtoCopyWith(RoomsDto value, $Res Function(RoomsDto) then) =
      _$RoomsDtoCopyWithImpl<$Res, RoomsDto>;
  @useResult
  $Res call(
      {OverallDto? overall, List<PricesAndOccupancyDto>? pricesAndOccupancy});

  $OverallDtoCopyWith<$Res>? get overall;
}

/// @nodoc
class _$RoomsDtoCopyWithImpl<$Res, $Val extends RoomsDto>
    implements $RoomsDtoCopyWith<$Res> {
  _$RoomsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = freezed,
    Object? pricesAndOccupancy = freezed,
  }) {
    return _then(_value.copyWith(
      overall: freezed == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallDto?,
      pricesAndOccupancy: freezed == pricesAndOccupancy
          ? _value.pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as List<PricesAndOccupancyDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverallDtoCopyWith<$Res>? get overall {
    if (_value.overall == null) {
      return null;
    }

    return $OverallDtoCopyWith<$Res>(_value.overall!, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsDtoImplCopyWith<$Res>
    implements $RoomsDtoCopyWith<$Res> {
  factory _$$RoomsDtoImplCopyWith(
          _$RoomsDtoImpl value, $Res Function(_$RoomsDtoImpl) then) =
      __$$RoomsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OverallDto? overall, List<PricesAndOccupancyDto>? pricesAndOccupancy});

  @override
  $OverallDtoCopyWith<$Res>? get overall;
}

/// @nodoc
class __$$RoomsDtoImplCopyWithImpl<$Res>
    extends _$RoomsDtoCopyWithImpl<$Res, _$RoomsDtoImpl>
    implements _$$RoomsDtoImplCopyWith<$Res> {
  __$$RoomsDtoImplCopyWithImpl(
      _$RoomsDtoImpl _value, $Res Function(_$RoomsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = freezed,
    Object? pricesAndOccupancy = freezed,
  }) {
    return _then(_$RoomsDtoImpl(
      overall: freezed == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallDto?,
      pricesAndOccupancy: freezed == pricesAndOccupancy
          ? _value._pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as List<PricesAndOccupancyDto>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$RoomsDtoImpl implements _RoomsDto {
  const _$RoomsDtoImpl(
      {this.overall, final List<PricesAndOccupancyDto>? pricesAndOccupancy})
      : _pricesAndOccupancy = pricesAndOccupancy;

  factory _$RoomsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsDtoImplFromJson(json);

  @override
  final OverallDto? overall;
  final List<PricesAndOccupancyDto>? _pricesAndOccupancy;
  @override
  List<PricesAndOccupancyDto>? get pricesAndOccupancy {
    final value = _pricesAndOccupancy;
    if (value == null) return null;
    if (_pricesAndOccupancy is EqualUnmodifiableListView)
      return _pricesAndOccupancy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomsDto(overall: $overall, pricesAndOccupancy: $pricesAndOccupancy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsDtoImpl &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other._pricesAndOccupancy, _pricesAndOccupancy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, overall,
      const DeepCollectionEquality().hash(_pricesAndOccupancy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsDtoImplCopyWith<_$RoomsDtoImpl> get copyWith =>
      __$$RoomsDtoImplCopyWithImpl<_$RoomsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomsDto implements RoomsDto {
  const factory _RoomsDto(
      {final OverallDto? overall,
      final List<PricesAndOccupancyDto>? pricesAndOccupancy}) = _$RoomsDtoImpl;

  factory _RoomsDto.fromJson(Map<String, dynamic> json) =
      _$RoomsDtoImpl.fromJson;

  @override
  OverallDto? get overall;
  @override
  List<PricesAndOccupancyDto>? get pricesAndOccupancy;
  @override
  @JsonKey(ignore: true)
  _$$RoomsDtoImplCopyWith<_$RoomsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverallDto _$OverallDtoFromJson(Map<String, dynamic> json) {
  return _OverallDto.fromJson(json);
}

/// @nodoc
mixin _$OverallDto {
  String? get boarding => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get adultCount => throw _privateConstructorUsedError;
  int? get childrenCount => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  bool? get sameBoarding => throw _privateConstructorUsedError;
  bool? get sameRoomGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverallDtoCopyWith<OverallDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallDtoCopyWith<$Res> {
  factory $OverallDtoCopyWith(
          OverallDto value, $Res Function(OverallDto) then) =
      _$OverallDtoCopyWithImpl<$Res, OverallDto>;
  @useResult
  $Res call(
      {String? boarding,
      String? name,
      int? adultCount,
      int? childrenCount,
      int? quantity,
      bool? sameBoarding,
      bool? sameRoomGroups});
}

/// @nodoc
class _$OverallDtoCopyWithImpl<$Res, $Val extends OverallDto>
    implements $OverallDtoCopyWith<$Res> {
  _$OverallDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = freezed,
    Object? name = freezed,
    Object? adultCount = freezed,
    Object? childrenCount = freezed,
    Object? quantity = freezed,
    Object? sameBoarding = freezed,
    Object? sameRoomGroups = freezed,
  }) {
    return _then(_value.copyWith(
      boarding: freezed == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adultCount: freezed == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: freezed == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sameBoarding: freezed == sameBoarding
          ? _value.sameBoarding
          : sameBoarding // ignore: cast_nullable_to_non_nullable
              as bool?,
      sameRoomGroups: freezed == sameRoomGroups
          ? _value.sameRoomGroups
          : sameRoomGroups // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverallDtoImplCopyWith<$Res>
    implements $OverallDtoCopyWith<$Res> {
  factory _$$OverallDtoImplCopyWith(
          _$OverallDtoImpl value, $Res Function(_$OverallDtoImpl) then) =
      __$$OverallDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? boarding,
      String? name,
      int? adultCount,
      int? childrenCount,
      int? quantity,
      bool? sameBoarding,
      bool? sameRoomGroups});
}

/// @nodoc
class __$$OverallDtoImplCopyWithImpl<$Res>
    extends _$OverallDtoCopyWithImpl<$Res, _$OverallDtoImpl>
    implements _$$OverallDtoImplCopyWith<$Res> {
  __$$OverallDtoImplCopyWithImpl(
      _$OverallDtoImpl _value, $Res Function(_$OverallDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = freezed,
    Object? name = freezed,
    Object? adultCount = freezed,
    Object? childrenCount = freezed,
    Object? quantity = freezed,
    Object? sameBoarding = freezed,
    Object? sameRoomGroups = freezed,
  }) {
    return _then(_$OverallDtoImpl(
      boarding: freezed == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adultCount: freezed == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: freezed == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sameBoarding: freezed == sameBoarding
          ? _value.sameBoarding
          : sameBoarding // ignore: cast_nullable_to_non_nullable
              as bool?,
      sameRoomGroups: freezed == sameRoomGroups
          ? _value.sameRoomGroups
          : sameRoomGroups // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$OverallDtoImpl implements _OverallDto {
  const _$OverallDtoImpl(
      {this.boarding,
      this.name,
      this.adultCount,
      this.childrenCount,
      this.quantity,
      this.sameBoarding,
      this.sameRoomGroups});

  factory _$OverallDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverallDtoImplFromJson(json);

  @override
  final String? boarding;
  @override
  final String? name;
  @override
  final int? adultCount;
  @override
  final int? childrenCount;
  @override
  final int? quantity;
  @override
  final bool? sameBoarding;
  @override
  final bool? sameRoomGroups;

  @override
  String toString() {
    return 'OverallDto(boarding: $boarding, name: $name, adultCount: $adultCount, childrenCount: $childrenCount, quantity: $quantity, sameBoarding: $sameBoarding, sameRoomGroups: $sameRoomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallDtoImpl &&
            (identical(other.boarding, boarding) ||
                other.boarding == boarding) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adultCount, adultCount) ||
                other.adultCount == adultCount) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sameBoarding, sameBoarding) ||
                other.sameBoarding == sameBoarding) &&
            (identical(other.sameRoomGroups, sameRoomGroups) ||
                other.sameRoomGroups == sameRoomGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, boarding, name, adultCount,
      childrenCount, quantity, sameBoarding, sameRoomGroups);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallDtoImplCopyWith<_$OverallDtoImpl> get copyWith =>
      __$$OverallDtoImplCopyWithImpl<_$OverallDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallDtoImplToJson(
      this,
    );
  }
}

abstract class _OverallDto implements OverallDto {
  const factory _OverallDto(
      {final String? boarding,
      final String? name,
      final int? adultCount,
      final int? childrenCount,
      final int? quantity,
      final bool? sameBoarding,
      final bool? sameRoomGroups}) = _$OverallDtoImpl;

  factory _OverallDto.fromJson(Map<String, dynamic> json) =
      _$OverallDtoImpl.fromJson;

  @override
  String? get boarding;
  @override
  String? get name;
  @override
  int? get adultCount;
  @override
  int? get childrenCount;
  @override
  int? get quantity;
  @override
  bool? get sameBoarding;
  @override
  bool? get sameRoomGroups;
  @override
  @JsonKey(ignore: true)
  _$$OverallDtoImplCopyWith<_$OverallDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricesAndOccupancyDto _$PricesAndOccupancyDtoFromJson(
    Map<String, dynamic> json) {
  return _PricesAndOccupancyDto.fromJson(json);
}

/// @nodoc
mixin _$PricesAndOccupancyDto {
  int? get adultCount => throw _privateConstructorUsedError;
  int? get childrenCount => throw _privateConstructorUsedError;
  String? get groupIdentifier => throw _privateConstructorUsedError;
  int? get simplePricePerPerson => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesAndOccupancyDtoCopyWith<PricesAndOccupancyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesAndOccupancyDtoCopyWith<$Res> {
  factory $PricesAndOccupancyDtoCopyWith(PricesAndOccupancyDto value,
          $Res Function(PricesAndOccupancyDto) then) =
      _$PricesAndOccupancyDtoCopyWithImpl<$Res, PricesAndOccupancyDto>;
  @useResult
  $Res call(
      {int? adultCount,
      int? childrenCount,
      String? groupIdentifier,
      int? simplePricePerPerson,
      int? total});
}

/// @nodoc
class _$PricesAndOccupancyDtoCopyWithImpl<$Res,
        $Val extends PricesAndOccupancyDto>
    implements $PricesAndOccupancyDtoCopyWith<$Res> {
  _$PricesAndOccupancyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultCount = freezed,
    Object? childrenCount = freezed,
    Object? groupIdentifier = freezed,
    Object? simplePricePerPerson = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      adultCount: freezed == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: freezed == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      groupIdentifier: freezed == groupIdentifier
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      simplePricePerPerson: freezed == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricesAndOccupancyDtoImplCopyWith<$Res>
    implements $PricesAndOccupancyDtoCopyWith<$Res> {
  factory _$$PricesAndOccupancyDtoImplCopyWith(
          _$PricesAndOccupancyDtoImpl value,
          $Res Function(_$PricesAndOccupancyDtoImpl) then) =
      __$$PricesAndOccupancyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? adultCount,
      int? childrenCount,
      String? groupIdentifier,
      int? simplePricePerPerson,
      int? total});
}

/// @nodoc
class __$$PricesAndOccupancyDtoImplCopyWithImpl<$Res>
    extends _$PricesAndOccupancyDtoCopyWithImpl<$Res,
        _$PricesAndOccupancyDtoImpl>
    implements _$$PricesAndOccupancyDtoImplCopyWith<$Res> {
  __$$PricesAndOccupancyDtoImplCopyWithImpl(_$PricesAndOccupancyDtoImpl _value,
      $Res Function(_$PricesAndOccupancyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultCount = freezed,
    Object? childrenCount = freezed,
    Object? groupIdentifier = freezed,
    Object? simplePricePerPerson = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PricesAndOccupancyDtoImpl(
      adultCount: freezed == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: freezed == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      groupIdentifier: freezed == groupIdentifier
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      simplePricePerPerson: freezed == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$PricesAndOccupancyDtoImpl implements _PricesAndOccupancyDto {
  const _$PricesAndOccupancyDtoImpl(
      {this.adultCount,
      this.childrenCount,
      this.groupIdentifier,
      this.simplePricePerPerson,
      this.total});

  factory _$PricesAndOccupancyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricesAndOccupancyDtoImplFromJson(json);

  @override
  final int? adultCount;
  @override
  final int? childrenCount;
  @override
  final String? groupIdentifier;
  @override
  final int? simplePricePerPerson;
  @override
  final int? total;

  @override
  String toString() {
    return 'PricesAndOccupancyDto(adultCount: $adultCount, childrenCount: $childrenCount, groupIdentifier: $groupIdentifier, simplePricePerPerson: $simplePricePerPerson, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesAndOccupancyDtoImpl &&
            (identical(other.adultCount, adultCount) ||
                other.adultCount == adultCount) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            (identical(other.groupIdentifier, groupIdentifier) ||
                other.groupIdentifier == groupIdentifier) &&
            (identical(other.simplePricePerPerson, simplePricePerPerson) ||
                other.simplePricePerPerson == simplePricePerPerson) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adultCount, childrenCount,
      groupIdentifier, simplePricePerPerson, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesAndOccupancyDtoImplCopyWith<_$PricesAndOccupancyDtoImpl>
      get copyWith => __$$PricesAndOccupancyDtoImplCopyWithImpl<
          _$PricesAndOccupancyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricesAndOccupancyDtoImplToJson(
      this,
    );
  }
}

abstract class _PricesAndOccupancyDto implements PricesAndOccupancyDto {
  const factory _PricesAndOccupancyDto(
      {final int? adultCount,
      final int? childrenCount,
      final String? groupIdentifier,
      final int? simplePricePerPerson,
      final int? total}) = _$PricesAndOccupancyDtoImpl;

  factory _PricesAndOccupancyDto.fromJson(Map<String, dynamic> json) =
      _$PricesAndOccupancyDtoImpl.fromJson;

  @override
  int? get adultCount;
  @override
  int? get childrenCount;
  @override
  String? get groupIdentifier;
  @override
  int? get simplePricePerPerson;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$PricesAndOccupancyDtoImplCopyWith<_$PricesAndOccupancyDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TravelDateDto _$TravelDateDtoFromJson(Map<String, dynamic> json) {
  return _TravelDateDto.fromJson(json);
}

/// @nodoc
mixin _$TravelDateDto {
  int? get days => throw _privateConstructorUsedError;
  int? get nights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelDateDtoCopyWith<TravelDateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateDtoCopyWith<$Res> {
  factory $TravelDateDtoCopyWith(
          TravelDateDto value, $Res Function(TravelDateDto) then) =
      _$TravelDateDtoCopyWithImpl<$Res, TravelDateDto>;
  @useResult
  $Res call({int? days, int? nights});
}

/// @nodoc
class _$TravelDateDtoCopyWithImpl<$Res, $Val extends TravelDateDto>
    implements $TravelDateDtoCopyWith<$Res> {
  _$TravelDateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? nights = freezed,
  }) {
    return _then(_value.copyWith(
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      nights: freezed == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDateDtoImplCopyWith<$Res>
    implements $TravelDateDtoCopyWith<$Res> {
  factory _$$TravelDateDtoImplCopyWith(
          _$TravelDateDtoImpl value, $Res Function(_$TravelDateDtoImpl) then) =
      __$$TravelDateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? days, int? nights});
}

/// @nodoc
class __$$TravelDateDtoImplCopyWithImpl<$Res>
    extends _$TravelDateDtoCopyWithImpl<$Res, _$TravelDateDtoImpl>
    implements _$$TravelDateDtoImplCopyWith<$Res> {
  __$$TravelDateDtoImplCopyWithImpl(
      _$TravelDateDtoImpl _value, $Res Function(_$TravelDateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? nights = freezed,
  }) {
    return _then(_$TravelDateDtoImpl(
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      nights: freezed == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$TravelDateDtoImpl implements _TravelDateDto {
  const _$TravelDateDtoImpl({this.days, this.nights});

  factory _$TravelDateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelDateDtoImplFromJson(json);

  @override
  final int? days;
  @override
  final int? nights;

  @override
  String toString() {
    return 'TravelDateDto(days: $days, nights: $nights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateDtoImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.nights, nights) || other.nights == nights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, days, nights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDateDtoImplCopyWith<_$TravelDateDtoImpl> get copyWith =>
      __$$TravelDateDtoImplCopyWithImpl<_$TravelDateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelDateDtoImplToJson(
      this,
    );
  }
}

abstract class _TravelDateDto implements TravelDateDto {
  const factory _TravelDateDto({final int? days, final int? nights}) =
      _$TravelDateDtoImpl;

  factory _TravelDateDto.fromJson(Map<String, dynamic> json) =
      _$TravelDateDtoImpl.fromJson;

  @override
  int? get days;
  @override
  int? get nights;
  @override
  @JsonKey(ignore: true)
  _$$TravelDateDtoImplCopyWith<_$TravelDateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
  String? get large => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res, ImageDto>;
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res, $Val extends ImageDto>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDtoImplCopyWith<$Res>
    implements $ImageDtoCopyWith<$Res> {
  factory _$$ImageDtoImplCopyWith(
          _$ImageDtoImpl value, $Res Function(_$ImageDtoImpl) then) =
      __$$ImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class __$$ImageDtoImplCopyWithImpl<$Res>
    extends _$ImageDtoCopyWithImpl<$Res, _$ImageDtoImpl>
    implements _$$ImageDtoImplCopyWith<$Res> {
  __$$ImageDtoImplCopyWithImpl(
      _$ImageDtoImpl _value, $Res Function(_$ImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_$ImageDtoImpl(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$ImageDtoImpl implements _ImageDto {
  const _$ImageDtoImpl({this.large, this.small});

  factory _$ImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDtoImplFromJson(json);

  @override
  final String? large;
  @override
  final String? small;

  @override
  String toString() {
    return 'ImageDto(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDtoImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      __$$ImageDtoImplCopyWithImpl<_$ImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageDto implements ImageDto {
  const factory _ImageDto({final String? large, final String? small}) =
      _$ImageDtoImpl;

  factory _ImageDto.fromJson(Map<String, dynamic> json) =
      _$ImageDtoImpl.fromJson;

  @override
  String? get large;
  @override
  String? get small;
  @override
  @JsonKey(ignore: true)
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingInfoDto _$RatingInfoDtoFromJson(Map<String, dynamic> json) {
  return _RatingInfoDto.fromJson(json);
}

/// @nodoc
mixin _$RatingInfoDto {
  int? get recommendationRate => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get scoreDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingInfoDtoCopyWith<RatingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingInfoDtoCopyWith<$Res> {
  factory $RatingInfoDtoCopyWith(
          RatingInfoDto value, $Res Function(RatingInfoDto) then) =
      _$RatingInfoDtoCopyWithImpl<$Res, RatingInfoDto>;
  @useResult
  $Res call(
      {int? recommendationRate,
      int? reviewsCount,
      double? score,
      String? scoreDescription});
}

/// @nodoc
class _$RatingInfoDtoCopyWithImpl<$Res, $Val extends RatingInfoDto>
    implements $RatingInfoDtoCopyWith<$Res> {
  _$RatingInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationRate = freezed,
    Object? reviewsCount = freezed,
    Object? score = freezed,
    Object? scoreDescription = freezed,
  }) {
    return _then(_value.copyWith(
      recommendationRate: freezed == recommendationRate
          ? _value.recommendationRate
          : recommendationRate // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoreDescription: freezed == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingInfoDtoImplCopyWith<$Res>
    implements $RatingInfoDtoCopyWith<$Res> {
  factory _$$RatingInfoDtoImplCopyWith(
          _$RatingInfoDtoImpl value, $Res Function(_$RatingInfoDtoImpl) then) =
      __$$RatingInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? recommendationRate,
      int? reviewsCount,
      double? score,
      String? scoreDescription});
}

/// @nodoc
class __$$RatingInfoDtoImplCopyWithImpl<$Res>
    extends _$RatingInfoDtoCopyWithImpl<$Res, _$RatingInfoDtoImpl>
    implements _$$RatingInfoDtoImplCopyWith<$Res> {
  __$$RatingInfoDtoImplCopyWithImpl(
      _$RatingInfoDtoImpl _value, $Res Function(_$RatingInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationRate = freezed,
    Object? reviewsCount = freezed,
    Object? score = freezed,
    Object? scoreDescription = freezed,
  }) {
    return _then(_$RatingInfoDtoImpl(
      recommendationRate: freezed == recommendationRate
          ? _value.recommendationRate
          : recommendationRate // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoreDescription: freezed == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$RatingInfoDtoImpl implements _RatingInfoDto {
  const _$RatingInfoDtoImpl(
      {this.recommendationRate,
      this.reviewsCount,
      this.score,
      this.scoreDescription});

  factory _$RatingInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingInfoDtoImplFromJson(json);

  @override
  final int? recommendationRate;
  @override
  final int? reviewsCount;
  @override
  final double? score;
  @override
  final String? scoreDescription;

  @override
  String toString() {
    return 'RatingInfoDto(recommendationRate: $recommendationRate, reviewsCount: $reviewsCount, score: $score, scoreDescription: $scoreDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingInfoDtoImpl &&
            (identical(other.recommendationRate, recommendationRate) ||
                other.recommendationRate == recommendationRate) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreDescription, scoreDescription) ||
                other.scoreDescription == scoreDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, recommendationRate, reviewsCount, score, scoreDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingInfoDtoImplCopyWith<_$RatingInfoDtoImpl> get copyWith =>
      __$$RatingInfoDtoImplCopyWithImpl<_$RatingInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _RatingInfoDto implements RatingInfoDto {
  const factory _RatingInfoDto(
      {final int? recommendationRate,
      final int? reviewsCount,
      final double? score,
      final String? scoreDescription}) = _$RatingInfoDtoImpl;

  factory _RatingInfoDto.fromJson(Map<String, dynamic> json) =
      _$RatingInfoDtoImpl.fromJson;

  @override
  int? get recommendationRate;
  @override
  int? get reviewsCount;
  @override
  double? get score;
  @override
  String? get scoreDescription;
  @override
  @JsonKey(ignore: true)
  _$$RatingInfoDtoImplCopyWith<_$RatingInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

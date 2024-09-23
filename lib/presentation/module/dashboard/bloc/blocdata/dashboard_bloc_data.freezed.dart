// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardBlocData {
  HotelEntity? get hotels => throw _privateConstructorUsedError;
  List<Hotel>? get favoriteHotels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardBlocDataCopyWith<DashboardBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardBlocDataCopyWith<$Res> {
  factory $DashboardBlocDataCopyWith(
          DashboardBlocData value, $Res Function(DashboardBlocData) then) =
      _$DashboardBlocDataCopyWithImpl<$Res, DashboardBlocData>;
  @useResult
  $Res call({HotelEntity? hotels, List<Hotel>? favoriteHotels});
}

/// @nodoc
class _$DashboardBlocDataCopyWithImpl<$Res, $Val extends DashboardBlocData>
    implements $DashboardBlocDataCopyWith<$Res> {
  _$DashboardBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
    Object? favoriteHotels = freezed,
  }) {
    return _then(_value.copyWith(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelEntity?,
      favoriteHotels: freezed == favoriteHotels
          ? _value.favoriteHotels
          : favoriteHotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardBlocDataImplCopyWith<$Res>
    implements $DashboardBlocDataCopyWith<$Res> {
  factory _$$DashboardBlocDataImplCopyWith(_$DashboardBlocDataImpl value,
          $Res Function(_$DashboardBlocDataImpl) then) =
      __$$DashboardBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HotelEntity? hotels, List<Hotel>? favoriteHotels});
}

/// @nodoc
class __$$DashboardBlocDataImplCopyWithImpl<$Res>
    extends _$DashboardBlocDataCopyWithImpl<$Res, _$DashboardBlocDataImpl>
    implements _$$DashboardBlocDataImplCopyWith<$Res> {
  __$$DashboardBlocDataImplCopyWithImpl(_$DashboardBlocDataImpl _value,
      $Res Function(_$DashboardBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
    Object? favoriteHotels = freezed,
  }) {
    return _then(_$DashboardBlocDataImpl(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelEntity?,
      favoriteHotels: freezed == favoriteHotels
          ? _value._favoriteHotels
          : favoriteHotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc

class _$DashboardBlocDataImpl implements _DashboardBlocData {
  const _$DashboardBlocDataImpl(
      {this.hotels, final List<Hotel>? favoriteHotels = const []})
      : _favoriteHotels = favoriteHotels;

  @override
  final HotelEntity? hotels;
  final List<Hotel>? _favoriteHotels;
  @override
  @JsonKey()
  List<Hotel>? get favoriteHotels {
    final value = _favoriteHotels;
    if (value == null) return null;
    if (_favoriteHotels is EqualUnmodifiableListView) return _favoriteHotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardBlocData(hotels: $hotels, favoriteHotels: $favoriteHotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardBlocDataImpl &&
            (identical(other.hotels, hotels) || other.hotels == hotels) &&
            const DeepCollectionEquality()
                .equals(other._favoriteHotels, _favoriteHotels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotels,
      const DeepCollectionEquality().hash(_favoriteHotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardBlocDataImplCopyWith<_$DashboardBlocDataImpl> get copyWith =>
      __$$DashboardBlocDataImplCopyWithImpl<_$DashboardBlocDataImpl>(
          this, _$identity);
}

abstract class _DashboardBlocData implements DashboardBlocData {
  const factory _DashboardBlocData(
      {final HotelEntity? hotels,
      final List<Hotel>? favoriteHotels}) = _$DashboardBlocDataImpl;

  @override
  HotelEntity? get hotels;
  @override
  List<Hotel>? get favoriteHotels;
  @override
  @JsonKey(ignore: true)
  _$$DashboardBlocDataImplCopyWith<_$DashboardBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

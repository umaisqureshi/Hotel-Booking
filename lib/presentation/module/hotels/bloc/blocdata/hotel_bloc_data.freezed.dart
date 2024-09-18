// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HotelBlocData {
  HotelEntity? get hotels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelBlocDataCopyWith<HotelBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBlocDataCopyWith<$Res> {
  factory $HotelBlocDataCopyWith(
          HotelBlocData value, $Res Function(HotelBlocData) then) =
      _$HotelBlocDataCopyWithImpl<$Res, HotelBlocData>;
  @useResult
  $Res call({HotelEntity? hotels});
}

/// @nodoc
class _$HotelBlocDataCopyWithImpl<$Res, $Val extends HotelBlocData>
    implements $HotelBlocDataCopyWith<$Res> {
  _$HotelBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
  }) {
    return _then(_value.copyWith(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelBlocDataImplCopyWith<$Res>
    implements $HotelBlocDataCopyWith<$Res> {
  factory _$$HotelBlocDataImplCopyWith(
          _$HotelBlocDataImpl value, $Res Function(_$HotelBlocDataImpl) then) =
      __$$HotelBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HotelEntity? hotels});
}

/// @nodoc
class __$$HotelBlocDataImplCopyWithImpl<$Res>
    extends _$HotelBlocDataCopyWithImpl<$Res, _$HotelBlocDataImpl>
    implements _$$HotelBlocDataImplCopyWith<$Res> {
  __$$HotelBlocDataImplCopyWithImpl(
      _$HotelBlocDataImpl _value, $Res Function(_$HotelBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
  }) {
    return _then(_$HotelBlocDataImpl(
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelEntity?,
    ));
  }
}

/// @nodoc

class _$HotelBlocDataImpl implements _HotelBlocData {
  const _$HotelBlocDataImpl({this.hotels});

  @override
  final HotelEntity? hotels;

  @override
  String toString() {
    return 'HotelBlocData(hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBlocDataImpl &&
            (identical(other.hotels, hotels) || other.hotels == hotels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelBlocDataImplCopyWith<_$HotelBlocDataImpl> get copyWith =>
      __$$HotelBlocDataImplCopyWithImpl<_$HotelBlocDataImpl>(this, _$identity);
}

abstract class _HotelBlocData implements HotelBlocData {
  const factory _HotelBlocData({final HotelEntity? hotels}) =
      _$HotelBlocDataImpl;

  @override
  HotelEntity? get hotels;
  @override
  @JsonKey(ignore: true)
  _$$HotelBlocDataImplCopyWith<_$HotelBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

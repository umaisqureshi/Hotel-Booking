// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteBlocData {
  List<Hotel>? get hotels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteBlocDataCopyWith<FavoriteBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteBlocDataCopyWith<$Res> {
  factory $FavoriteBlocDataCopyWith(
          FavoriteBlocData value, $Res Function(FavoriteBlocData) then) =
      _$FavoriteBlocDataCopyWithImpl<$Res, FavoriteBlocData>;
  @useResult
  $Res call({List<Hotel>? hotels});
}

/// @nodoc
class _$FavoriteBlocDataCopyWithImpl<$Res, $Val extends FavoriteBlocData>
    implements $FavoriteBlocDataCopyWith<$Res> {
  _$FavoriteBlocDataCopyWithImpl(this._value, this._then);

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
              as List<Hotel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteBlocDataImplCopyWith<$Res>
    implements $FavoriteBlocDataCopyWith<$Res> {
  factory _$$FavoriteBlocDataImplCopyWith(_$FavoriteBlocDataImpl value,
          $Res Function(_$FavoriteBlocDataImpl) then) =
      __$$FavoriteBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hotel>? hotels});
}

/// @nodoc
class __$$FavoriteBlocDataImplCopyWithImpl<$Res>
    extends _$FavoriteBlocDataCopyWithImpl<$Res, _$FavoriteBlocDataImpl>
    implements _$$FavoriteBlocDataImplCopyWith<$Res> {
  __$$FavoriteBlocDataImplCopyWithImpl(_$FavoriteBlocDataImpl _value,
      $Res Function(_$FavoriteBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = freezed,
  }) {
    return _then(_$FavoriteBlocDataImpl(
      hotels: freezed == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc

class _$FavoriteBlocDataImpl implements _FavoriteBlocData {
  const _$FavoriteBlocDataImpl({final List<Hotel>? hotels = const []})
      : _hotels = hotels;

  final List<Hotel>? _hotels;
  @override
  @JsonKey()
  List<Hotel>? get hotels {
    final value = _hotels;
    if (value == null) return null;
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteBlocData(hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteBlocDataImpl &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteBlocDataImplCopyWith<_$FavoriteBlocDataImpl> get copyWith =>
      __$$FavoriteBlocDataImplCopyWithImpl<_$FavoriteBlocDataImpl>(
          this, _$identity);
}

abstract class _FavoriteBlocData implements FavoriteBlocData {
  const factory _FavoriteBlocData({final List<Hotel>? hotels}) =
      _$FavoriteBlocDataImpl;

  @override
  List<Hotel>? get hotels;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteBlocDataImplCopyWith<_$FavoriteBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

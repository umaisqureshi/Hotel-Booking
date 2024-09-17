// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart'
    as _i3;
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart'
    as _i4;
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart'
    as _i5;
import 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AccountBloc>(() => _i3.AccountBloc());
    gh.factory<_i4.FavoriteBloc>(() => _i4.FavoriteBloc());
    gh.factory<_i5.HotelBloc>(() => _i5.HotelBloc());
    gh.factory<_i6.OverviewBloc>(() => _i6.OverviewBloc());
    return this;
  }
}

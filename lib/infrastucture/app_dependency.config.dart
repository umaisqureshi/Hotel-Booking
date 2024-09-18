// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hotel_booking/data/remote/api_service.dart' as _i6;
import 'package:hotel_booking/data/repository/hotels_data_source.dart' as _i5;
import 'package:hotel_booking/data/repository/hotels_repository.dart' as _i7;
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart' as _i9;
import 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart'
    as _i3;
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart'
    as _i4;
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart'
    as _i10;
import 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart'
    as _i8;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i5.HotelsDataSource>(() => _i6.HotelApiService());
    gh.factory<_i7.HotelsRepository>(() =>
        _i7.HotelsRepository(hotelsDataSource: gh<_i5.HotelsDataSource>()));
    gh.factory<_i8.OverviewBloc>(() => _i8.OverviewBloc());
    gh.factory<_i9.GetHotelsUseCase>(
        () => _i9.GetHotelsUseCase(repository: gh<_i7.HotelsRepository>()));
    gh.factory<_i10.HotelBloc>(
        () => _i10.HotelBloc(getHotelUseCase: gh<_i9.GetHotelsUseCase>()));
    return this;
  }
}

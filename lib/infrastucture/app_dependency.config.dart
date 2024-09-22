// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hotel_booking/data/data.dart' as _i4;
import 'package:hotel_booking/data/local/local_database.dart' as _i6;
import 'package:hotel_booking/data/remote/api_service.dart' as _i5;
import 'package:hotel_booking/data/repository/hotels_repository.dart' as _i7;
import 'package:hotel_booking/domain/domain.dart' as _i10;
import 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart'
    as _i11;
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart'
    as _i12;
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart'
    as _i9;
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart' as _i13;
import 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart'
    as _i3;
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart'
    as _i15;
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart'
    as _i14;
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
    gh.factory<_i4.HotelsDataSource>(() => _i5.HotelApiService());
    gh.factory<_i4.HotelsLocalDatasource>(() => _i6.LocalDatabaseService());
    gh.factory<_i7.HotelsRepository>(() => _i7.HotelsRepository(
          hotelsDataSource: gh<_i4.HotelsDataSource>(),
          localDataSource: gh<_i4.HotelsLocalDatasource>(),
        ));
    gh.factory<_i8.OverviewBloc>(() => _i8.OverviewBloc());
    gh.factory<_i9.RemoveFavoriteUseCase>(() =>
        _i9.RemoveFavoriteUseCase(repository: gh<_i10.HotelsRepository>()));
    gh.factory<_i11.AddToFavoriteUseCase>(() =>
        _i11.AddToFavoriteUseCase(repository: gh<_i10.HotelsRepository>()));
    gh.factory<_i12.GetAllFavoritesUseCase>(() =>
        _i12.GetAllFavoritesUseCase(repository: gh<_i10.HotelsRepository>()));
    gh.factory<_i13.GetHotelsUseCase>(
        () => _i13.GetHotelsUseCase(repository: gh<_i10.HotelsRepository>()));
    gh.factory<_i14.HotelBloc>(() => _i14.HotelBloc(
          getHotelUseCase: gh<_i13.GetHotelsUseCase>(),
          addToFavoriteUseCase: gh<_i11.AddToFavoriteUseCase>(),
        ));
    gh.factory<_i15.FavoriteBloc>(() => _i15.FavoriteBloc(
          getAllFavoritesUseCase: gh<_i12.GetAllFavoritesUseCase>(),
          removeFavoriteUseCase: gh<_i9.RemoveFavoriteUseCase>(),
        ));
    return this;
  }
}

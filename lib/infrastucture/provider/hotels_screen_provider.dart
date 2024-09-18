import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import 'package:hotel_booking/presentation/module/hotels/hotels.dart';

@RoutePage()
class HotelsScreenProvider extends StatelessWidget {
  const HotelsScreenProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GetIt getIt = GetIt.instance;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc =
                HotelBloc(getHotelUseCase: getIt.get<GetHotelsUseCase>());
            return bloc;
          },
        ),
      ],
      child: const HotelsScreen(),
    );
  }
}

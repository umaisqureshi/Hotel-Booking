import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart';
import 'package:hotel_booking/presentation/module/overview/overview.dart';

@RoutePage()
class OverviewScreenProvider extends StatefulWidget {
  const OverviewScreenProvider({super.key});

  @override
  State<OverviewScreenProvider> createState() => _OverviewScreenProviderState();
}

class _OverviewScreenProviderState extends State<OverviewScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = OverviewBloc();
            return bloc;
          },
        ),
      ],
      child: const OverViewScreen(),
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/presentation/module/account/account.dart';
import 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart';

@RoutePage()
class AccountScreenProvider extends StatefulWidget {
  const AccountScreenProvider({super.key});

  @override
  State<AccountScreenProvider> createState() => _AccountScreenProviderState();
}

class _AccountScreenProviderState extends State<AccountScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = AccountBloc();
            return bloc;
          },
        ),
      ],
      child: const AccountScreen(),
    );
  }
}

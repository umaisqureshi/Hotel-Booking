import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart';
import 'package:hotel_booking/presentation/module/account/widget/account_view_widget.dart';
import '../../base/screen/stateful_screen.dart';

class AccountScreen extends StatefulScreen<AccountBloc> {
  const AccountScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _AccountScreenState();
  }
}

class _AccountScreenState extends ScreenState<AccountBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Account".tr(),
            style: TextStyle(
                fontSize: 16,
                color: context.appColorScheme.backgroundColor,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: context.appColorScheme.primary,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
        ),
        backgroundColor: context.appColorScheme.backgroundColor,
        extendBodyBehindAppBar: true,
        body: const AccountScreenView());
  }
}

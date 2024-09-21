import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart';
import '../../base/screen/stateful_screen.dart';

class OverViewScreen extends StatefulScreen<OverviewBloc> {
  const OverViewScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _OverViewScreenState();
  }
}

class _OverViewScreenState extends ScreenState<OverviewBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Overview".tr(),
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
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: const OverviewScreenView());
  }
}

class OverviewScreenView extends StatelessWidget {
  const OverviewScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Overview screen")),
        ],
      ),
    );
  }
}

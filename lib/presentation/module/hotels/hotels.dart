import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import '../../base/screen/stateful_screen.dart';

class HotelsScreen extends StatefulScreen<HotelBloc> {
  const HotelsScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _HotelsScreenState();
  }
}

class _HotelsScreenState extends ScreenState<HotelBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hotels",
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
        // backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: const HotelsScreenView());
  }
}

class HotelsScreenView extends StatelessWidget {
  const HotelsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Hotels screen")),
        ],
      ),
    );
  }
}

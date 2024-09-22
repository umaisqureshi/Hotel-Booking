
import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/base/screen/stateful_screen.dart';
import  'package:hotel_booking/presentation/presentation.dart';

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

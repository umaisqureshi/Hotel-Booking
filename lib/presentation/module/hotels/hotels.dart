import 'package:easy_localization/easy_localization.dart';
import '../../base/screen/stateful_screen.dart';
import 'package:hotel_booking/presentation/presentation.dart';

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
  final AppAlerts alerts = AppAlerts();
  @override
  void initState() {
    context.read<HotelBloc>().add(GetAllHotelsEvent());
    super.initState();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hotels".tr(),
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
        extendBodyBehindAppBar: true,
        body: const GetAllHotelsComponent());
  }

  @override
  void onListenableState(BuildContext context, Object? state) {
    super.onListenableState(context, state);
    if (state is HotelAlreadyExistState) {
      alerts.showSnackBar(context, "Already in Favorites".tr());
    }
    if (state is HotelAddedSuccessfullyState) {
      alerts.showSnackBar(context, "Successfully added to Favorites".tr());
    }
  }
}

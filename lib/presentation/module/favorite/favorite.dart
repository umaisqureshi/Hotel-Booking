import 'package:easy_localization/easy_localization.dart';
import '../../base/screen/stateful_screen.dart';
import 'package:hotel_booking/presentation/presentation.dart';

class FavoriteScreen extends StatefulScreen<DashboardBloc> {
  const FavoriteScreen({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return _FavoriteScreenState();
  }
}

class _FavoriteScreenState extends ScreenState<DashboardBloc> {
  final AppAlerts alerts = AppAlerts();
  @override
  void initState() {
    context.read<DashboardBloc>().add(GetAllFavoriteEvent());
    super.initState();
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Favorites".tr(),
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
        body: const GetAllFavoritesComponent());
  }

  @override
  void onListenableState(BuildContext context, Object? state) {
    super.onListenableState(context, state);
    if (state is FavoriteSuccessfullyRemovedState) {
      alerts.showSnackBar(context, "Successfully removed from Favorites".tr());
    }
    if (state is FavoriteRemovedConfirmationState) {
      alerts.showAlertDialog(
          context, "Do you really want to remove it from favorites?".tr(), () {
        context
            .read<DashboardBloc>()
            .add(RemoveFavoriteEvent(hotelId: state.hotelId));
        Navigator.of(context).pop();
      }, "Remove".tr());
    }
  }
}

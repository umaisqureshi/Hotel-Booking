import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/presentation.dart';

class GetAllHotelsComponent extends ErrorWidgetHandlerComponent<HotelBloc,
    HotelsState, HotelsLoadedState, HotelErrorState> {
  const GetAllHotelsComponent({super.key});

  @override
  Widget buildComponent(BuildContext context, HotelsLoadedState state) {
    if (state.hotels.isEmpty) {
      return  Center(
        child: Text(
          "No Hotels".tr(),
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
      );
    } else {
      return HotelViewScreen(state: state);
    }
  }

  @override
  Widget buildError(BuildContext context, HotelErrorState errorState) {
    return ErrorScreenWidget(
      onPressed: () {
        context.read<HotelBloc>().add(GetAllHotelsEvent());
      },
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const LoadingIndicator();
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_booking/presentation/presentation.dart';

class AccountScreenView extends StatelessWidget {
  const AccountScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
        ),
        Center(
          child: Column(
            children: [
              ClipOval(
                child: Icon(
                  Icons.person_pin,
                  size: 200,
                  color: context.appColorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Muhammad Umais Rashid",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Language:".tr(),
            locale: context.locale,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        const AnimatedToggleWidget(),
      ],
    );
  }
}

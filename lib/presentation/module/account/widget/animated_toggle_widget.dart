import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';

class AnimatedToggleWidget extends StatelessWidget {
  const AnimatedToggleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: 150,
        child: AnimatedToggleSwitch<bool>.dual(
          current: context.locale.languageCode == "de",
          first: true,
          second: false,
          indicatorSize: const Size.fromWidth(75),
          spacing: 5.0,
          style: const ToggleStyle(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderColor: Colors.transparent,
            backgroundColor: Colors.white24,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1.5),
              ),
            ],
          ),
          borderWidth: 2.0,
          height: 45,
          onChanged: (b) {
            if (b == true) {
              context.setLocale(const Locale("de"));
            } else {
              context.setLocale(const Locale("en"));
            }
          },
          styleBuilder: (b) => ToggleStyle(
              indicatorColor:
              context.appColorScheme.primary.withOpacity(0.9)),
          iconBuilder: (value) => value
              ? const Text('🇩🇪 DE',
              style: TextStyle(color: Colors.white, fontSize: 16))
              : const Text('🇬🇧 EN',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          textBuilder: (value) => value
              ? const Center(
              child: Text(
                '🇬🇧 EN',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
              : const Center(
              child: Text(
                '🇩🇪 DE',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const ButtonWidget({super.key, required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          )),
          backgroundColor: WidgetStatePropertyAll(Color(0xffFF8F16)),
        ),
        onPressed: onPress,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}

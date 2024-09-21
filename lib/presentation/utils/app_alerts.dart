import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/extension/context_extension.dart';

class AppAlerts {
  showSnackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 2,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        duration: const Duration(seconds: 1),
        backgroundColor: context.appColorScheme.primary.withOpacity(0.8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        content: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            message,
            style: TextStyle(
              color: context.appColorScheme.backgroundColor,
            ),
          ),
        )));
  }

  showAlertDialog(BuildContext context, String message, VoidCallback onPress , String buttonText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Remove",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: onPress,
              child:  Text(buttonText),
            ),
          ],
        );
      },
    );
  }
}

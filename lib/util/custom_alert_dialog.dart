import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAlertDialog {
  static bool alertShowed = false;

  static alert(BuildContext context, String title, String message, {VoidCallback? callback}) {
    if (alertShowed) return;

    alertShowed = true;
    showDialog(context: context, builder: (_) => CustomAlertDialog._alertContent(context, title, message))
        .then((value) {
      alertShowed = false;
      if (callback != null) callback();
      if (message == "Token is invalid") {
        Navigator.pop(context);
      }
    });
  }

  static Widget _alertContent(BuildContext context, String title, String message) {
    if (Platform.isAndroid) {
      return AlertDialog(
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 14),
          child: Text(title),
        ),
        content: Text(
          message,
          style: const TextStyle(height: 1.5),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              alertShowed = false;
              Navigator.pop(context);
            },
          )
        ],
      );
    }

    return CupertinoAlertDialog(
      title: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 14),
        child: Text(title),
      ),
      content: Text(
        message,
        style: const TextStyle(height: 1.5),
      ),
      actions: <Widget>[
        CupertinoButton(
          child: const Text("OK"),
          onPressed: () {
            alertShowed = false;
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

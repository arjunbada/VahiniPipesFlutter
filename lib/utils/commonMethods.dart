import 'package:flutter/material.dart';

class CommonMethods {

  static void showOptionDialog(BuildContext context, String title, Function(int) action) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                action(0);
              },
              child: const Text('Plumber'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                action(1);
              },
              child: const Text('Retailer'),
            ),
          ],
        );
      },
    );
  }
}

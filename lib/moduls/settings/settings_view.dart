import 'package:flutter/cupertino.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Settings View",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontFamily: "ElMessiri",
          )),
    );
  }
}

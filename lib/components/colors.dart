import 'package:flutter/material.dart';

//dark mode
var kBackgroundColor, kprimaryColor, ksecondaryColor;

class SwitchScreen extends StatefulWidget {
  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        kBackgroundColor = Color.fromRGBO(0, 0, 0, 1);
        kprimaryColor = Color.fromRGBO(255, 255, 255, 1);
        ksecondaryColor = Color.fromRGBO(239, 84, 70, 1);
      });
      debugPrint('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        kBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
        kprimaryColor = Color.fromRGBO(0, 0, 0, 1);
        ksecondaryColor = Color.fromRGBO(47, 71, 114, 1);
      });
      debugPrint('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: isSwitched,
        onChanged: toggleSwitch,
        inactiveTrackColor: kprimaryColor,
        inactiveThumbColor: kprimaryColor,
        activeTrackColor: kBackgroundColor,
        activeColor: kBackgroundColor,
      ),
    );
  }
}

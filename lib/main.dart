import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import './components/screen.dart';
import './components/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kBackgroundColor),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: GoogleFonts.poppins(
              color: ksecondaryColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                color: kprimaryColor,
              ),
              onPressed: () {},
            ),
            SwitchScreen()
          ],
          elevation: 0,
        ),
        body: Screen(),
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: new Text("Home"),
              backgroundColor: kBackgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              title: new Text("Music"),
              backgroundColor: kBackgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              title: new Text("Stream"),
              backgroundColor: kBackgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.data_usage_sharp),
              title: new Text("Account"),
              backgroundColor: kBackgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: new Text("Search"),
              backgroundColor: kBackgroundColor,
            ),
          ], fixedColor: kprimaryColor, unselectedItemColor: kprimaryColor,
        ),
      ),
    );
  }
}


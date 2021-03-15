import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'db.dart';
import 'colors.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:
          new BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular Shows",
                        style: GoogleFonts.poppins(
                            color: kprimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: 200,
                          child: ListView.builder(
                            physics: new BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            padding: EdgeInsets.only(right: 8),
                            scrollDirection: Axis.horizontal,
                            itemCount: popularShows.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                width: 300,
                                height: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        margin: EdgeInsets.only(right: 8),
                                        height: 175,
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                popularShows[index]['image']),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      popularShows[index]['title'],
                                      style: GoogleFonts.poppins(
                                        color: kprimaryColor,
                                        fontSize: 10.2,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 40),
                        child: Text(
                          "Upcoming Blockbuster",
                          style: GoogleFonts.poppins(
                            color: kprimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              width: 400,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/DS2.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Text(
                            "View all",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: ksecondaryColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 0.1, color: Colors.grey[100]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Nigeria Songs",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kprimaryColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.trending_up_sharp,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                          physics: new BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          padding: EdgeInsets.only(right: 8),
                          scrollDirection: Axis.horizontal,
                          itemCount: nigeria.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      height: 175,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              nigeria[index]['image']),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    nigeria[index]['title'],
                                    style: GoogleFonts.poppins(
                                      color: kprimaryColor,
                                      fontSize: 10.2,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

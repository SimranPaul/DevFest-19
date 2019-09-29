import 'package:flutter/material.dart';

import 'notif.dart';
import 'cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child:
                        Text("TRIPS", style: TextStyle(color: Colors.blueGrey)),
                  ),
                  Tab(
                    child: Text("HOTELS",
                        style: TextStyle(color: Colors.blueGrey)),
                  ),
                ],
              ),
              actions: <Widget>[
                Notif(),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
              title: Text("Bookings"),
              backgroundColor: Color.fromRGBO(27, 27, 27, 100),
            ),
            backgroundColor: Color.fromRGBO(12, 12, 12, 100),
            body: TabBarView(children: <Widget>[
              ListView(
                children: <Widget>[
                  Placard("Hawaii   to   Sevilla", "29th Sept 2019",
                      "Emirates Airways"),
                  Placard(
                      "Manipal  to   Goa", "20th Sept 2019", "Thivim Rails"),
                  Placard("Sevilla  to   Morroco", "30th Sept 2019",
                      "Emirates Airways")
                ],
              ),
              Container(
                child: Text(
                  "No Hotels Available!",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                alignment: Alignment.center,
              )
            ])));
  }
}

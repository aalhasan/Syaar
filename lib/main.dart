import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'entities/Trips.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayar',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blueGrey,
      ),
      home: SayearPage(
        trips: null,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "SA"),
      ],
    );
  }
}


//class Sayer
class SayearPage extends StatelessWidget {
  final List<Trip> trips;

  SayearPage({Key key, this.trips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('مرحباً بك باصداء'),
            bottom: TabBar(
              labelColor: Colors.white70,
              isScrollable: true,
              tabs: [
                _tab('طلباتي الحاليه'),
                _tab('طلباتي السابقه'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _tabViewer('طلباتي الحاليه', trips: this.trips),
              _tabViewer('طلباتي المستقبليه', trips: this.trips )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'جب دراهم',
            child: Icon(Icons.add),
          ),
        ));
  }

  //Title for the tab
  Tab _tab(String s) {
    return Tab(child: Text(s),);
  }


  Widget _tabViewer(String s, {List<Trip> trips}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,



    );
  }

}




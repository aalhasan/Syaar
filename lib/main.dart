import 'package:Syaar/entities/Trip.dart';
import 'package:Syaar/entities/utils/MockupUtilities.dart';
import 'package:Syaar/widgets//SyaarPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /**
     * UI Constructurions
     */

    List<Trip> trips = MockupUtilities.getMockupTrips();


    return MaterialApp(
      title: 'Sayar',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blueGrey,
      ),
      home: SyaarPage(
        trips: trips,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      //forcing Locale support
      supportedLocales: [
        Locale("ar", "SA"),
      ],
    );
  }
}




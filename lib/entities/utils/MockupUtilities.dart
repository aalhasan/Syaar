
import 'package:Syaar/entities/Customer.dart';
import 'package:Syaar/entities/Location.dart';
import 'package:Syaar/entities/Trip.dart';
import 'package:Syaar/entities/enums/CarCapacity.dart';
import 'package:Syaar/entities/enums/TripDirection.dart';
import 'package:Syaar/entities/enums/TripScope.dart';
import 'package:Syaar/entities/enums/TripStatus.dart';

import 'dart:convert';

class MockupUtilities{

  List<Trip> getMockupTrips(){
    
    var mockup = List<Trip>();

    Location work = new Location(24.746495, 46.642697, 'Home');
    Location home = new Location (24.722181, 46.686849, 'Work');

    Trip t = new Trip(home, work);
    t.carCapacity = CarCapacity.Single;
    t.tripDirection = TripDirection.Twoway;
    t.tripScope = TripScope.Term;
    t.tripStatus = TripStatus.New;
    t.customer = new Customer('Demi More', '0565656565');
    
    mockup.add(t);


    t = json.decode(json.encode(t));
    t.tripStatus = TripStatus.New;
    mockup.add(t);


    t = json.decode(json.encode(t));
    t.tripStatus = TripStatus.Processing;
    mockup.add(t);


    t = json.decode(json.encode(t));
    t.tripStatus = TripStatus.Cancelled;
    mockup.add(t);

    t = json.decode(json.encode(t));
    t.tripStatus = TripStatus.Archive;
    mockup.add(t);

    return mockup;
  }

}
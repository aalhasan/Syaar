import 'package:Syaar/entities/Customer.dart';
import 'package:Syaar/entities/Location.dart';
import 'package:Syaar/entities/Trip.dart';
import 'package:Syaar/entities/enums/CarCapacity.dart';
import 'package:Syaar/entities/enums/TripDirection.dart';
import 'package:Syaar/entities/enums/TripScope.dart';
import 'package:Syaar/entities/enums/TripStatus.dart';

class MockupUtilities {
  static List<Trip> getMockupTrips() {
    var mockup = List<Trip>();

    mockup.add(_createMockup(TripStatus.New));
    mockup.add(_createMockup(TripStatus.Active));
    mockup.add(_createMockup(TripStatus.Processing));
    mockup.add(_createMockup(TripStatus.Cancelled));
    mockup.add(_createMockup(TripStatus.Archive));

    return mockup;
  }

  //generate mockups based on status
  static Trip _createMockup(TripStatus status) {
    Location work = new Location(24.746495, 46.642697, 'Home');
    Location home = new Location(24.722181, 46.686849, 'Work');

    Trip t = new Trip(home, work);
    t.carCapacity = CarCapacity.Single;
    t.tripDirection = TripDirection.Twoway;
    t.tripScope = TripScope.Term;
    t.tripStatus = status;
    t.customer = new Customer('Demi More', '0565656565');

    return t;
  }

  //filter for mockups
  static List<Trip> filterTrips(List<Trip> trips, TripStatus status) {
    if (status == TripStatus.New)
      return trips
          .where((i) =>
              i.tripStatus == TripStatus.New ||
              i.tripStatus == TripStatus.Processing ||
              i.tripStatus == TripStatus.Active)
          .toList();
    else
      return trips
          .where((i) =>
              i.tripStatus == TripStatus.Archive ||
              i.tripStatus == TripStatus.Cancelled)
          .toList();
  }
}

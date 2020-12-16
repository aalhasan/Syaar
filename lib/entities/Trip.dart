//trips


import 'package:Syaar/entities/Customer.dart';
import 'package:Syaar/entities/Location.dart';
import 'package:Syaar/entities/enums/TripStatus.dart';

import 'enums/CarCapacity.dart';
import 'enums/Days.dart';
import 'enums/TripDirection.dart';
import 'enums/TripScope.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Trip {
  Location _home;
  Location _destination;
  Days _days;
  CarCapacity _carCapacity;
  TripScope _tripScope;
  TripDirection _tripDirection;
  String _narruation;
  TripStatus _tripStatus;
  Customer _customer;


  Trip(this._home, this._destination) {
    this._home = _home;
    this._destination = _destination;
  }


  @override
  String toString() => 'from ' + _home.toString() + ' to ' + this._destination.toString();








  // Getters and setters




  TripStatus get tripStatus => _tripStatus;

  set tripStatus(TripStatus value) {
    _tripStatus = value;
  }

  Location get home => this._home;

  set home(Location home) => this._home = home;

  String get narruation => _narruation;

  set narruation(String value) {
    _narruation = value;
  }

  TripDirection get tripDirection => _tripDirection;

  set tripDirection(TripDirection value) {
    _tripDirection = value;
  }

  TripScope get tripScope => _tripScope;

  set tripScope(TripScope value) {
    _tripScope = value;
  }

  CarCapacity get carCapacity => _carCapacity;

  set carCapacity(CarCapacity value) {
    _carCapacity = value;
  }

  Days get days => _days;

  set days(Days value) {
    _days = value;
  }

  Location get destination => _destination;

  set destination(Location value) {
    _destination = value;
  }

  Customer get customer => _customer;

  set customer(Customer value) {
    _customer = value;
  }


}


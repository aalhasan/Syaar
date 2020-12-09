//trips
import 'enums/CarCapacity.dart';
import 'enums/Days.dart';
import 'enums/TripDirection.dart';
import 'enums/TripScope.dart';

class Trip {
  String _home;
  String _destination;
  Days _days;
  CarCapacity _carCapacity;
  TripScope _tripScope;
  TripDirection _tripDirection;



  Trip(this._home, this._destination) {
    this._home = _home;
    this._destination = _destination;
  }

  String get home => this._home;

  set home(String home) => this._home = home;

  @override
  String toString() => 'from ' + _home + ' to ' + this._destination;
}

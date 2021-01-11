enum TripDirection{
  Oneway,
  Twoway
}

//toShortString
extension ParseToString on TripDirection {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
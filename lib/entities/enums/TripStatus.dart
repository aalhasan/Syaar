enum TripStatus{
New,
  Processing,
  Cancelled,
  Active,
  Archive
}

//toShortString
extension ParseToString on TripStatus {
  String toShortString() {
    return this.toString().split('.').last;
  }
}


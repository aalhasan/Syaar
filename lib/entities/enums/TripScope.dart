enum TripScope{
  Weekly,
  Monthly,
  Term
}

//toShortString
extension ParseToString on TripScope {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
enum Days{
  Sun,
  Mon,
  Tues,
  Wed,
  Thurs,
  Fir,
  Sat
}

//toShortString
extension ParseToString on Days {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
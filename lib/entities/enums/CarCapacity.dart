enum CarCapacity{
  Single,
  Group
}

//toShortString
extension ParseToString on CarCapacity {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
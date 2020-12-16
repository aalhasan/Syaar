class Location{
  num latitude;
  num longitude;
  String _name;


  Location([this.latitude, this.longitude, this._name]);

  @override
  String toString() {
    return 'Location{latitude: $latitude, longitude: $longitude}';
  }


}
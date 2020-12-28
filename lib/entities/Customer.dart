class Customer{

  String _name;
  String _mobileNumber;
  String _email;

  Customer(this._name, this._mobileNumber);

  String get email => _email;

  set email(String value) =>
    _email = value;


  String get mobileNumber => _mobileNumber;

  set mobileNumber(String value) {
    _mobileNumber = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
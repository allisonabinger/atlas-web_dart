class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    final validLength = _password.length >= 8 && _password.length <= 16;
    final validUpperCase = _password.contains(RegExp(r'[A-Z]'));
    final validLowerCase = _password.contains(RegExp(r'[a-z]'));
    final validNumber = _password.contains(RegExp(r'[0-9]'));

    return validLength && validUpperCase && validLowerCase && validNumber;
  }

  String get password {
    return _password;
  }

  void set password(String newPass) {
    this._password = newPass;
  }

  @override
  String toString() => 'Your Password is: $_password';
}

// contains the password class
class Password {
  String password = '';

  bool isValid() {
    final validLength = password.length >= 8 && password.length <= 16;
    final validUpperCase = password.contains(RegExp(r'[A-Z]'));
    final validLowerCase = password.contains(RegExp(r'[a-z]'));
    final validNumber = password.contains(RegExp(r'[0-9]'));

    return validLength && validUpperCase && validLowerCase && validNumber;
  }

  @override
  String toString() => 'Your Password is: $password';
}

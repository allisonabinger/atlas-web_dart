// contains the password and the User class
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

class User extends Password {
  String name ;
  int age;
  double height;
  int id;

  User({
    required this.id, 
    required this.name, 
    required this.age, 
    required this.height, 
    required String user_password,
    }) : super(password: user_password);

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  set user_password(String newPass) {
    password = newPass;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  // keys are strings, values are dynamic (any type)
  bool isUserPasswordValid() {
    return password.isNotEmpty ? super.isValid() : false;
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isUserPasswordValid()})';
  }
}

// contains the User class

class User {
  String name ;
  int age;
  double height;
  int id;

  User({required this.id, required this.name, required this.age, required this.height});

  // keys are strings, values are dynamic (any type)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height']
    );
  }

    @override
    String toString() {
      return 'User(id : $id ,name: $name, age: $age, height: $height)';
    }
}

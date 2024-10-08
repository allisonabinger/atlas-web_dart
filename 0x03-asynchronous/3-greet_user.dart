// loginUser() returns a string with Hello <username>
// Calls checkCredentials() to return a future bool
import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String username = userMap['username'];
    return "Hello $username";
  } catch (err) {
    return "error caught: $err";
  }
}

Future <String> loginUser() async {
    try {
        if (await checkCredentials()) {
            print("There is a user: true");
            return await greetUser();
        } else {
            print("There is a user: false");
            return "Wrong credentials";
        }
    } catch (err) {
        return "error caught: $err";
    }
}

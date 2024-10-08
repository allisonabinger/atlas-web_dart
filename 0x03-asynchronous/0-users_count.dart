// prints the number of users by calling fetchUsersCount()
import '0-util.dart';

Future<void> usersCount() async {
  int users = await fetchUsersCount();
  print(users);
}

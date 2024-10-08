// calculateTotal calculates total prive of items for certain user

import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    // get username
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // get user's orders
    String userOrders = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(userOrders);

    // total users orders
    double totalPrice = 0.0;
    for (String product in orders) {
      String productPriceStr = await fetchProductPrice(product);
      num productPrice = jsonDecode(productPriceStr);

      totalPrice += productPrice.toDouble();
    }
    return totalPrice;
  } catch (err) {;
    print("error caught: $err");
    return -1;
  }
}

import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  Future<User?> getUser(int id) async {
    try {
      final response = await get('https://reqres.in/api/users/$id');
      return User.fromJson(response.body["data"]);
    } catch (e) {
      return null;
    }
  }
}

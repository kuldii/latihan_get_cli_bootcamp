import 'package:get/get.dart';
import 'package:latihan_cli/app/data/models/user_model.dart';
import 'package:latihan_cli/app/data/providers/user_provider.dart';

class HomeController extends GetxController {
  UserProvider userProv = UserProvider();
  Future<User?> getDataUser(int id) async {
    return await userProv.getUser(id);
  }
}

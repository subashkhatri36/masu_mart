import 'package:get_storage/get_storage.dart';

class Offline {
  final user = GetStorage('User');
  void writeUser(String userId) {
    user.write(
      "userId",
      userId,
    );
  }

  dynamic readUser() {
    return user.read("userId");
  }

  dynamic removeUser() {
    return user.remove('userId');
  }
}

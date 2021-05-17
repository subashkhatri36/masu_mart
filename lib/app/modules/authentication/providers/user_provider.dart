import 'package:get/get.dart';
import 'package:masu_mart/app/data/model/user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => User.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<User>> getUser(int id) async => await get('user/$id');
  Future<Response<User>> postUser(User user) async => await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');
}

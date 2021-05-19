import 'package:get/get.dart';
import 'package:masu_mart/app/data/model/category_model.dart';

class CategoryProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Category.fromMap(map);
      if (map is List)
        return map.map((item) => Category.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'http://127.0.0.1:8000/category/';
  }

  Future<Category> getCategory(int id) async {
    final response = await get('category/');
    return response.body;
  }

  //Future<Response<Category>> postUser(Category category) async => await post('user', user);
  // Future<Response> deleteUser(int id) async => await delete('user/$id');
}

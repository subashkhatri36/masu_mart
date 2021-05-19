import 'package:http/http.dart' as http;
import 'package:masu_mart/app/constants/url_link.dart';
import 'package:masu_mart/app/data/model/category_model.dart';

class CategoryService {
  static var client = http.Client();
  static Future<List<Category>> fetchCategory() async {
    var response = await client.get(getcategory);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    }
    return null;
  }
}

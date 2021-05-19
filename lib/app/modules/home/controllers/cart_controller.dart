import 'package:get/get.dart';
import 'package:masu_mart/app/data/model/product_model.dart';

class CartController extends GetxController {
  RxBool loadingCart = false.obs;
  RxList<Product> cartList;

  @override
  void onInit() {
    //changeNavbar();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

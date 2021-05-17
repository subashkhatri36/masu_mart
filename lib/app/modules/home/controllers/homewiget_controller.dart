import 'package:get/get.dart';
import 'package:masu_mart/app/data/data/all_temp_data.dart';
import 'package:masu_mart/app/data/model/category_model.dart';
import 'package:masu_mart/app/data/model/product_model.dart';

class HomeWidgetContorller extends GetxController {
  RxList<Category> categoryList;
  RxBool categoryload = false.obs;
  RxInt selectedIndex = 0.obs;
  RxBool changeSelected = false.obs;

  RxBool switchToggle = false.obs;
  RxBool qtyChange = false.obs;

  RxList<Product> productList;
  RxBool loadingProduct;

  void loadProduct() {
    productList = productschicken.obs;
  }

  @override
  void onInit() {
    //changeNavbar();
    loadProduct();

    super.onInit();
  }

  void changeQty(int index, bool add) {
    if (add) {
      productList[index].qty++;
    } else {
      if (productList[index].qty > 1) productList[index].qty--;
    }
    productList[index].producttotalprice =
        productList[index].qty * productList[index].totalprice;
    qtyChange.toggle();
  }

  void loadingCategory() {
    categoryload.toggle();
    categoryList = categorys.obs;
    selectedIndex.value = 0;
    categoryload.toggle();
  }

  void changeIndex(int index) {
    categoryList[selectedIndex.value].isSelected = false;
    categoryList[index].isSelected = true;
    selectedIndex.value = index;
    changeSelected.toggle();
  }

  void producttotalPrice(int qty, double totalprice, int index) {
    productList[index].producttotalprice = qty * totalprice;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

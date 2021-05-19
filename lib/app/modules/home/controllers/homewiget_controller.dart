import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/data/data/all_temp_data.dart';
import 'package:masu_mart/app/data/model/ads_model.dart';
import 'package:masu_mart/app/data/model/category_model.dart';
import 'package:masu_mart/app/data/model/product_model.dart';

class HomeWidgetContorller extends GetxController {
  //for header image
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  List<Widget> imageSliders;
  //for ads of home screen
  RxBool adImage = false.obs;
  List<AdsModel> companyAdsList;
  RxBool companyAdload = false.obs;
  List<AdsModel> advertiseList;
  RxBool advertiseAdload = false.obs;

  //for category
  RxList<Category> categoryList;
  RxBool categoryload = false.obs;
  RxInt selectedIndex = 0.obs;
  RxBool changeSelected = false.obs;

  RxBool switchToggle = false.obs;
  RxBool qtyChange = false.obs;

//for change produt
  RxList<Product> productList;
  RxBool loadingProduct = false.obs;

  void loadCompanyAds() {
    companyAdload.toggle();
    List<AdsModel> admodel = [];
    for (var img in imgList) {
      admodel.add(new AdsModel(imageurl: img));
    }
    companyAdsList = admodel.obs;
    companyAdload.toggle();
  }

  void loadAdvertiseAds() {}

  void loadProduct() {
    loadingProduct.toggle();
    productList = productschicken.obs;
    loadingProduct.toggle();
  }

  @override
  void onInit() {
    //changeNavbar();
    loadCompanyAds();
    loadProduct();

    super.onInit();
  }

  void changeCategory() {
    loadingProduct.toggle();
    productList = productskhasi.obs;
    loadingProduct.toggle();
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
    changeCategory();
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
/*
CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            autoPlay: true,
          ),
          items: imageSliders,
        )
        
         */

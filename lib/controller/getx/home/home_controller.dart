import 'package:flutter/material.dart';
import 'package:food_delivery_apps/models/foods.dart';

import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    isLoading.value = true;
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    isLoading.value =false;
    super.onInit();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  // sort out and return a list of food items that belong to a specific category
  RxList<Foods> filterMenuByCategory(
      FoodCategory category, List<Foods> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList().obs;
  }


}
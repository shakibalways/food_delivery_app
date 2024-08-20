
import 'package:food_delivery_apps/models/foods.dart';
import 'package:food_delivery_apps/models/restaurant.dart';
import 'package:get/get.dart';

class FoodDetailsController extends GetxController {
  final Foods foods;
  RxBool isLoading = false.obs;
  RxMap<Addon, bool> selectAddon = <Addon, bool>{}.obs;

  FoodDetailsController(this.foods) {
    for (Addon addon in foods.availableAddon) {
      selectAddon[addon] = false;
    }
  }
  // method add to the cart
  void addToCart(Foods foods, RxMap<Addon,bool> selectAddon){
    // close the current food page to go back to menu
    Get.back();

    List<Addon> currentSelectedAddons =[];
    for(Addon addon in foods.availableAddon){
      if(selectAddon[addon] == true){
        currentSelectedAddons.add(addon);
      }
    }
    Get.put(Restaurant()).addToCart(foods, currentSelectedAddons);
  }

  }


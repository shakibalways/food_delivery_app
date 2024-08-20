import 'foods.dart';

class CartItem {
  Foods foods;
  List<Addon> selectAddons;
  int quantity;
  CartItem({
    required this.foods,
    required this.selectAddons,
    this.quantity = 1,
  });

  double get totalPrice{
    double addonPrice =selectAddons.fold(0,(sum, addon)=> sum + addon.price);
    return(foods.price + addonPrice) * quantity;
  }
}

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:intl/intl.dart';

import 'cart_item.dart';
import 'foods.dart';

class Restaurant extends ChangeNotifier {
  List<Foods> menu = [
    // Burgers
    Foods(
      name: "Fresh Ingredients ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath:
          "assets/images/burger/delicious-burgers-with-bright-lights.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Beef Meat ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath:
          "assets/images/burger/delicious-burgers-with-bright-lights (1).jpg",
      price: 10.89,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Burger Meal ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath:
          "assets/images/burger/delicious-looking-3d-burger-with-simple-background.jpg",
      price: 8.39,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Looking Burger ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath:
          "assets/images/burger/view-delicious-burger-with-buns-cheese.jpg",
      price: 5.29,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Foods(
      name: "Chess Tomato ",
      discription:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "assets/images/burger/view-tasty-burger-with-cheese-meat.jpg",
      price: 7.69,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Chess", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //Desserts
    Foods(
      name: 'Mojito',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/dessert/ai-generated-cake-picture.jpg",
      price: 20.08,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Cake',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/dessert/delicious-cupcakes-with-fruits.jpg",
      price: 17.18,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Cake Fruits',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/dessert/view-plate-filled-with-delicious-sweet-cupcake-desserts.jpg",
      price: 15.89,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Strawberry',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/dessert/view-plate-with-delicious-sweet-cupcake-dessert.jpg",
      price: 11.29,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),
    Foods(
      name: 'Delicious Desserts',
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/dessert/view-plate-with-delicious-sweet-cupcake-dessert (1).jpg",
      price: 13.39,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Mint", price: 0.79),
        Addon(name: "Raspberry Puree", price: 1.79),
        Addon(name: "Splash of Coconut Ram", price: 2.79),
      ],
    ),

    // Drinks
    Foods(
      name: "Lemon Green",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/drink/bar-with-different-cocktails-including-cocktail-cocktail-glass-white-liquid.jpg",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Strawberry",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath: "assets/images/drink/glass-juice-with-drink-it.jpg",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Apple Drinks",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/drink/glass-orange-cocktail-with-straw-lemon-slice-rim.jpg",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Cocktail",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/drink/glass-orange-juice-with-slice-lemon-side.jpg",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),
    Foods(
      name: "Alcoholic Drinks",
      discription:
          "A Classic Cuban cocktail with muddled line and mint, sweetened and sugar.",
      imagePath:
          "assets/images/drink/two-cocktails-table-one-which-has-blue-green-liquid-it.jpg",
      price: 12.80,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
        Addon(name: "Lemon Green", price: 1.12),
      ],
    ),

    //Salads
    Foods(
      name: "Caesar salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath:
          "assets/images/salad/colorful-bowl-salad-with-tomatoes-cucumbers-side.jpg",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Caesar", price: 2.12),
        Addon(name: "Caesar", price: 2.12),
        Addon(name: "Caesar", price: 2.12),
      ],
    ),
    Foods(
      name: "Greek salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salad/delicious-salad-studio.jpg",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Greek", price: 2.45),
        Addon(name: "Greek", price: 2.45),
        Addon(name: "Greek", price: 2.45),
      ],
    ),
    Foods(
      name: "Fruit salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath:
          "assets/images/salad/healthy-hearty-salad-tuna-green-beans-tomatoes-eggs-potatoes-black-olives-close-up-bowl-table.jpg",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Fruit", price: 6.25),
        Addon(name: "Fruit", price: 6.25),
        Addon(name: "Fruit", price: 6.25),
      ],
    ),
    Foods(
      name: "Croutons",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath:
          "assets/images/salad/salad-from-tomatoes-cucumber-red-onions-lettuce-leaves-healthy-summer-vitamin-menu-vegan-vegetable-food-vegetarian-dinner-table.jpg",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Croutons", price: 3.18),
        Addon(name: "Croutons", price: 3.18),
        Addon(name: "Croutons", price: 3.18),
      ],
    ),
    Foods(
      name: "Potato salad",
      discription:
          "A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagePath: "assets/images/salad/top-view-delicious-salad-table.jpg",
      price: 5.80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Potato", price: 5.02),
        Addon(name: "Potato", price: 5.02),
        Addon(name: "Potato", price: 5.02),
      ],
    ),

    //  Sides
    Foods(
      name: "Applesauce",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath:
          "assets/images/side/chinese-new-year-reunion-dinner-scene-with-delicious-food.jpg",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Asparagus",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/side/close-up-appetizing-ramadan-meal.jpg",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Broccoli",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath:
          "assets/images/side/fresh-gourmet-vegetarian-meal-with-grilled-tomato-bell-pepper-generated-by-artificial-intelligence.jpg",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Cauliflower",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/side/top-view-delicious-food-table.jpg",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
    Foods(
      name: "Coleslaw",
      discription:
          "A side dish, sometimes referred to as a side order, side item, or simply a side",
      imagePath: "assets/images/side/top-view-delicious-fries-table.jpg",
      price: 5.89,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
        Addon(name: "Applesauce", price: 0.99),
      ],
    ),
  ];

  /*

  G E T T E R S

   */

  List<Foods> get menuList => menu;
  List<CartItem> get cart => _cart;

/*

 Operations

   */
  // user cart
  final List<CartItem> _cart = [];

// add to cart
  void addToCart(Foods foods, List<Addon> selectAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item are the same
      bool isSameFood = item.foods == foods;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectAddons, selectAddons);
      return isSameFood && isSameAddons;
    });
// if item already exits, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
// otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          foods: foods,
          selectAddons: selectAddons,
        ),
      );
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.foods.price;
      for (Addon addon in cartItem.selectAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

// get total number of item in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*

  Helpers

   */

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("=========");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.foods.name} - ${formatPrice(cartItem.foods.price)}");
      if(cartItem.selectAddons.isNotEmpty){
        receipt.writeln("  Add-ons: ${formatAddon(cartItem.selectAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("=========");
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${formatPrice(getTotalPrice())}");

   return receipt.toString();
  }

//format double value into money
  String formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

//format list of addon into a string summary

  String formatAddon(List<Addon> addon) {
    return addon
        .map((addon) => "${addon.name} (${formatPrice(addon.price)})")
        .join(", ");
  }
}

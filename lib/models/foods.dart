class Foods {
  final String name;
  final String discription;
  final String imagePath;
  final double price; // 4.99
  final FoodCategory category;
  List<Addon> availableAddon; //[extra chess, sauce,extra patty ]

  Foods({
    required this.name,
    required this.discription,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddon,
  });
}

// food category's
enum FoodCategory {
  burgers,
  desserts,
  drinks,
  salads,
  sides,
}

// food addons
class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}

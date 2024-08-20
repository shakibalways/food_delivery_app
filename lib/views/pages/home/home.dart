

import 'package:flutter/material.dart';
import 'package:food_delivery_apps/models/foods.dart';
import 'package:food_delivery_apps/models/restaurant.dart';
import 'package:food_delivery_apps/views/pages/food_details/food_details.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_current_location.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_discription_box.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_drawer.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_foods_tile.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_sliver_app_bar.dart';
import 'package:food_delivery_apps/views/pages/home/widgets/my_tab_bar.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category

  List<Foods> filterMenuByCategory(
      FoodCategory category, List<Foods> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return  of list foods in given category
  List<Widget> getFoodInThisCategory(List<Foods> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Foods> categoryMenu = filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodsTile(
            foods: food,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetails(foods: food),
                ),
              );
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  endIndent: 20,
                  indent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //my current location
                MyCurrentLocation(),
                // discription box
                const MyDiscriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
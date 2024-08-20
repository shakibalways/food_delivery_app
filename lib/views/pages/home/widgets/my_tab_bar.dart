import 'package:flutter/material.dart';
import 'package:food_delivery_apps/models/foods.dart';


class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });
// Tab bar add FoodCategory List
  List<Tab> buildCategoryTab() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: TabBar(
        dividerColor: Theme.of(context).colorScheme.secondary,
        controller: tabController,
        tabs: buildCategoryTab(),
      ),
    );
  }
}

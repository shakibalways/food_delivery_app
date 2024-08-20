import 'package:flutter/material.dart';
import 'package:food_delivery_apps/controller/getx/home/home_controller.dart';
import 'package:food_delivery_apps/models/foods.dart';

import 'package:get/get.dart';

class MyFoodsTile extends StatelessWidget {
  final Foods foods;
  final void Function()? onTap;

  const MyFoodsTile({
    super.key,
    required this.foods,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foods.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${foods.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        foods.discription,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Obx(
                  () => homeController.isLoading.isFalse
                      ?
                       ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            foods.imagePath,
                            height: 120,
                            width: 115,
                            fit: BoxFit.fitHeight,
                          ),
                        ): const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            indent: 5,
            endIndent: 5,
          )
        ],
      ),
    );
  }
}

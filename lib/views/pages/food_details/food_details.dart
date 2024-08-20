import 'package:flutter/material.dart';
import 'package:food_delivery_apps/components/my_button.dart';
import 'package:food_delivery_apps/controller/getx/food_details/food_details_controller.dart';
import 'package:food_delivery_apps/models/foods.dart';

import 'package:get/get.dart';

class FoodDetails extends StatelessWidget {
  final Foods foods;
  const FoodDetails({super.key, required this.foods});
  @override
  Widget build(BuildContext context) {
    final FoodDetailsController controller =
        Get.put(FoodDetailsController(foods));

    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Image.asset(
                  controller.foods.imagePath,
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        controller.foods.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // food price

                      Text(
                        "\$${controller.foods.price}",
                        style: const TextStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // food discription
                      Text(
                        controller.foods.discription,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // addons

                      Text(
                        "Add-Ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.foods.availableAddon.length,
                          itemBuilder: (context, index) {
                            Addon addon =
                                controller.foods.availableAddon[index];
                            return Obx(() => controller.isLoading.isTrue
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : CheckboxListTile(
                                    title: Text(addon.name),
                                    subtitle: Text(
                                      "\$${addon.price}",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    value: controller.selectAddon[addon],
                                    onChanged: (bool? value) {
                                      controller.selectAddon[addon] = value!;
                                    },
                                  ));
                          },
                        ),
                      ),
                      // button add to the cart
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                Obx(
                  () => controller.isLoading.isTrue
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : MyButton(
                          onTap: () => controller.addToCart(
                              controller.foods, controller.selectAddon),
                          text: "Add To Cart",
                        ),
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

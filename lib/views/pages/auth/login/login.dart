import 'package:flutter/material.dart';
import 'package:food_delivery_apps/components/my_button.dart';
import 'package:food_delivery_apps/controller/getx/authentication/sign_in/sign_in_controller.dart';
import 'package:food_delivery_apps/utils/common_snackbar_message/snackbar_message.dart';
import 'package:food_delivery_apps/utils/internet_connection_check/check_internet.dart';
import 'package:food_delivery_apps/views/pages/auth/login/widget/my_email_field.dart';
import 'package:food_delivery_apps/views/pages/auth/login/widget/my_password_field.dart';
import 'package:food_delivery_apps/views/pages/home/home.dart';

import 'package:get/get.dart';

class Login extends StatelessWidget {
  final void Function()? onTap;
  const Login({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.lock,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 15,
              ),
              //message, slogan
              Text(
                "Food Delivery App",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              //email texFlied
              const SizedBox(
                height: 25,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    MyEmailField(
                      controller: controller.emailController,
                      hintText: "email",
                      obscureText: false,
                    ),
                    //password textFlied
                    const SizedBox(
                      height: 25,
                    ),
                    MyPasswordField(
                        controller: controller.passwordController,
                        hintText: "password",
                        obscureText: true),
                  ],
                ),
              ),

              //sign in button
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => controller.isLoading.value
                    ? const CircularProgressIndicator()
                    : MyButton(
                        onTap: () async {
                          if (!controller.formKey.currentState!.validate()) {
                            return;
                          }
                          if (!await ConnectionChecker.checkConnection()) {
                            CommonSnackBarMessage.noInternetConnection();
                            return;
                          }
                          controller.isLoading.value = true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const Home(),
                            ),
                          );
                          controller.isLoading.value = false;
                        },
                        text: "Login",
                      ),
              ),

              //not a member?register now
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "not a member?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "register now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

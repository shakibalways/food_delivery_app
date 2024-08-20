import 'package:flutter/material.dart';
import 'package:food_delivery_apps/components/my_button.dart';
import 'package:food_delivery_apps/controller/getx/authentication/sign_up/register_controller.dart';
import 'package:food_delivery_apps/utils/common_snackbar_message/snackbar_message.dart';
import 'package:food_delivery_apps/utils/internet_connection_check/check_internet.dart';
import 'package:food_delivery_apps/views/pages/auth/login/login.dart';
import 'package:food_delivery_apps/views/pages/auth/login/widget/my_email_field.dart';
import 'package:food_delivery_apps/views/pages/auth/login/widget/my_password_field.dart';
import 'package:food_delivery_apps/views/pages/auth/register/wideget/my_confirm_password_field.dart';
import 'package:get/get.dart';


class Register extends StatelessWidget {
  final void Function()? onTap;
  const Register({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(RegistrationController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
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
              "Create New Account",
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
              key: registerController.formKey,
              child: Column(
                children: [
                  MyEmailField(
                    controller: registerController.emailController,
                    hintText: "email",
                    obscureText: false,
                  ),
                  //password textFlied
                  const SizedBox(
                    height: 25,
                  ),
                  MyPasswordField(
                      controller: registerController.passwordController,
                      hintText: "password",
                      obscureText: true),
                  const SizedBox(
                    height: 25,
                  ),
                  // confirm password
                  MyConfirmPasswordField(
                    controller: registerController.confirmPasswordController,
                    hintText: "Confirm password",
                    obscureText: true,
                  ),
                  //sign un button
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            Obx(
              () => registerController.isLoading.value
                  ? const CircularProgressIndicator()
                  : MyButton(
                      onTap: () async {
                        if (!registerController.formKey.currentState!
                            .validate()) {
                          return;
                        }

                        if (!await ConnectionChecker.checkConnection()) {
                          CommonSnackBarMessage.noInternetConnection();
                          registerController.isLoading.value = true;
                          Get.to(Login(
                            onTap: () {},
                          ));
                          registerController.isLoading.value = false;
                          return;
                        }
                      },
                      text: "Sign Up",
                    ),
            ),
            const SizedBox(
              height: 25,
            ),
            //already have an account?register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login here",
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyConfirmPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

   const MyConfirmPasswordField(
      {super.key,
        required this.controller,
        required this.hintText,
        required this.obscureText,
       });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        validator:(value) {
          if (value == null || value == '') {
            return "confirm_pass_error".tr;
          } else if (value.toString() != "") {
            return "pass_did_not_match_error".tr;
          }
          return null;
        },
      ),
    );
  }
}

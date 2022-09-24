import 'package:flutter/material.dart';

import 'app_strings.dart';

Widget defaultButton(
    {double width = double.infinity,
    double height = 50.0,
    double radius = 0.0,
    double fontSize = 20.0,
    Color backGround = Colors.black,
    required String text,
    required VoidCallback function}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        ),
      ),
    ),
  );
}

Widget defaultTextFormField({
  required TextEditingController controller,
  required IconData prefixIcon,
  required TextInputType keyboardType,
  IconData? suffixIcon,
  VoidCallback? suffixPressed,
  required String label,
  TextInputAction inputAction = TextInputAction.next,
  bool obscureText = false,
  String? hintText,
  required String? Function(String?) validator,
  String Function(String?)? onChanged,
  String Function(String?)? onFieldSubmitted,
}) {
  return TextFormField(
    controller: controller,
    onChanged: onChanged,
    validator: validator,
    obscureText: obscureText,
    keyboardType: keyboardType,
    onFieldSubmitted: onFieldSubmitted,
    textInputAction: inputAction,
    decoration: InputDecoration(
      label: Text(label),
      hintText: hintText,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: suffixIcon != null
          ? IconButton(
              onPressed: suffixPressed,
              icon: Icon(suffixIcon),
            )
          : null,
      border: const OutlineInputBorder(),
    ),
  );
}

void navigatorTo({required BuildContext context, required Widget screen}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
}

void navigatorAndFinish(
    {required BuildContext context, required Widget screen}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => screen));
}

buildSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text(
      AppStrings.chooseYourPaymentMethod,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.black,
    duration: Duration(seconds: 2),
  ));
}

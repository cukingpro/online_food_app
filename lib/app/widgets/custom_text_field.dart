import 'package:flutter/material.dart';
import 'package:online_food_app/core/themes/text_styles.dart';
import 'package:online_food_app/generated/locales.g.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.suffix,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  final String label;
  final Widget? suffix;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(label, style: TextStyles.description),
        const SizedBox(height: 10),
        TextField(
          style: TextStyles.textFieldText,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyles.hint,
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(226, 226, 236, 1),
              ),
            ),
            suffix: suffix,
          ),
        ),
      ],
    );
  }
}

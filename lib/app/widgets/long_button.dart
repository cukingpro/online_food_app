import 'package:flutter/material.dart';
import 'package:online_food_app/core/themes/text_styles.dart';
import 'package:online_food_app/core/values/colors.dart';

class LongButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;
  final String text;
  final Color color;

  const LongButton({
    Key? key,
    required this.onPressed,
    this.icon,
    required this.text,
    this.color = AppColors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: AppColors.green,
          textStyle: TextStyles.longButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) ...[
              Icon(icon),
              SizedBox(
                width: 40,
              ),
            ],
            Text(text)
          ],
        ),
      ),
    );
  }
}

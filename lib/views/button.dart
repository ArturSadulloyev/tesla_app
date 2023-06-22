import 'package:flutter/material.dart';
import 'package:tesla_app/services/constants/colors.dart';
import 'package:tesla_app/services/constants/strings.dart';

import '../services/constants/fonts.dart';
class Button extends StatelessWidget {
   final double height;
   final double width;
   final color1;
   final color2;
   final void Function()? onPressed;
   final Widget child;
  const Button({super.key, required this.height, required this.width, this.color1, this.color2, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all( BorderSide(color: color1),),
        backgroundColor: MaterialStateProperty.all(
          (color2),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(

              Radius.circular(100),
            ),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
           Size(width, height),
        ),
      ),
      onPressed:onPressed,
      child: Text(
        CustomStrings.orderNow,
        style: CustomFonts.orderNow(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';

class TabBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int selectedIndex;
  final int i;
  final String text;
  const TabBarButton(
      {Key? key,
      this.onPressed,
      required this.lastPage,
      required this.selectedIndex,
      required this.text,
      required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: (i <= lastPage)
                ? const TextStyle(
                    fontSize: 16,
                    fontFamily: CustomFonts.gotham,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.darkBlack)
                : const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: CustomFonts.gotham,
                  ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (selectedIndex == i) ? Colors.red : Colors.transparent,
          ),
        ],
      ),
    );
  }
}

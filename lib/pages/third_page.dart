import 'package:flutter/material.dart';
import 'package:tesla_app/services/constants/colors.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/images.dart';
import 'package:tesla_app/services/constants/strings.dart';

class ThirdPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const ThirdPage({super.key, this.onPressed, required this.text});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int selected = 0;
  final listImages = [
    const Image(
      image: CustomImages.blackTesla,
      width: 531,
      height: 301,
    ),
    const Image(
      image: CustomImages.greyTesla,
      width: 531,
      height: 301,
    ),
    const Image(
      image: CustomImages.blueTesla,
      width: 531,
      height: 301,
    ),
    const Image(
      image: CustomImages.whiteTesla,
      width: 531,
      height: 301,
    ),
    const Image(
      image: CustomImages.redTesla,
      width: 531,
      height: 301,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                CustomStrings.selectColor,
                style: CustomFonts.select(),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          if (selected == 0)
            const Image(
              image: CustomImages.blackTesla,
              width: 531,
              height: 301,
            ),
          if (selected == 1)
            const Image(
              image: CustomImages.greyTesla,
              width: 531,
              height: 301,
            ),
          if (selected == 2)
            const Image(
              image: CustomImages.blueTesla,
              width: 531,
              height: 301,
            ),
          if (selected == 3)
            const Image(
              image: CustomImages.whiteTesla,
              width: 531,
              height: 301,
            ),
          if (selected == 4)
            const Image(
              image: CustomImages.redTesla,
              width: 531,
              height: 301,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CustomStrings.pearlWhiteMultiCoat,
                    style: CustomFonts.performance(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    CustomStrings.dollar,
                    style: CustomFonts.performanceCost(),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {
                  selected = 0;
                  setState(() {});
                },
                icon: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: selected == 0
                            ? CustomColors.red
                            : CustomColors.transparent),
                    color: CustomColors.darkBlack.withOpacity(1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(49),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        CustomColors.darkBlack.withOpacity(0.5),
                        CustomColors.darkBlack.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                iconSize: 49,
                splashRadius: 1,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  selected = 1;
                  setState(() {});
                },
                icon: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: selected == 1
                            ? CustomColors.red
                            : CustomColors.transparent),
                    color: CustomColors.strangeColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(49),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        CustomColors.strangeColor.withOpacity(0.8),
                        CustomColors.strangeColor.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                iconSize: 49,
                splashRadius: 1,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  selected = 2;
                  setState(() {});
                },
                icon: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: selected == 2
                            ? CustomColors.red
                            : CustomColors.transparent),
                    color: CustomColors.blue,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(49),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        CustomColors.blue.withOpacity(0.8),
                        CustomColors.blue.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                iconSize: 49,
                splashRadius: 1,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  selected = 3;
                  setState(() {});
                },
                icon: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                    color: const Color(0XFFE2E2E2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(49),
                    ),
                    border: Border.all(
                      width: 3,
                      color: selected == 3
                          ? CustomColors.red
                          : CustomColors.grey.withOpacity(0.1),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        CustomColors.lightWhite.withOpacity(0.8),
                        CustomColors.lightWhite.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                iconSize: 49,
                splashRadius: 1,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  selected = 4;
                  setState(() {});
                },
                icon: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: selected == 4
                            ? CustomColors.red
                            : CustomColors.transparent),
                    color: CustomColors.red,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(49),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        CustomColors.red.withOpacity(0.8),
                        CustomColors.red.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                iconSize: 49,
                splashRadius: 1,
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Divider(
              thickness: 2,
              color: CustomColors.dividerColor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                CustomStrings.wheels,
                style: CustomFonts.wheels(),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                CustomStrings.spoiler,
                style: CustomFonts.wheels(),
              ),
            ),
          ),
          const SizedBox(
            height: 46,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: CustomColors.white,
              boxShadow: [
                BoxShadow(
                    color: const Color(0XFF41648F).withOpacity(0.3),
                    blurRadius: 8,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 0)),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  CustomStrings.thirdPageCost,
                  style: CustomFonts.performanceCost2(),
                ),
                const SizedBox(
                  width: 53,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: CustomColors.red, strokeAlign: 3),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      (CustomColors.white),
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      const Size(160, 50),
                    ),
                  ),
                  onPressed: widget.onPressed,
                  child: Text(
                    CustomStrings.next,
                    style: CustomFonts.next(),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/images.dart';
import 'package:tesla_app/services/constants/strings.dart';
import '../services/constants/colors.dart';

class FourthPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const FourthPage({super.key, this.onPressed, required this.text});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: Stack(
        children: [
          if (selected == 0)
            Image(
              fit: BoxFit.cover,
              image: CustomImages.whiteTeslaInterior,
              width: MediaQuery.of(context).size.width,
              height: 450,
            ),
          if (selected == 1)
            Image(
              fit: BoxFit.cover,
              image: CustomImages.blackTeslaInterior,
              width: MediaQuery.of(context).size.width,
              height: 450,
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.65,
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 38,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        CustomStrings.selectInterior,
                        style: CustomFonts.select(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              CustomStrings.blackAndWhite,
                              style: CustomFonts.performance(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              CustomStrings.thousandDollar,
                              style: CustomFonts.performanceCost(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            CustomStrings.allBlack,
                            style: CustomFonts.longRange(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            CustomStrings.included,
                            style: CustomFonts.longRangeCost(),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: IconButton(
                          onPressed: () {
                            selected = 0;
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
                                color: selected == 0
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
                      ),
                      const SizedBox(
                        width: 15,
                      ),
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
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        CustomStrings.fourthPageCost,
                        style: CustomFonts.performanceCost2(),
                      ),
                      const SizedBox(
                        width: 73,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                                color: CustomColors.red, strokeAlign: 3),
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
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

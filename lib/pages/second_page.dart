import 'package:flutter/material.dart';
import 'package:tesla_app/pages/third_page.dart';
import 'package:tesla_app/services/constants/colors.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/strings.dart';

class SecondPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const SecondPage({super.key, this.onPressed, required this.text});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                CustomStrings.selectYourCar,
                style: CustomFonts.select(),
              ),
            ),
          ),
          const Spacer(flex: 1,),
          Image.asset(
            "assets/images/red_tesla.png",
            width: 531,
            height: 301,
          ),
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CustomStrings.performance,
                    style: CustomFonts.performance(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    CustomStrings.performanceCost,
                    style: CustomFonts.performanceCost(),
                  )
                ],
              ),
              const SizedBox(
                width: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CustomStrings.longRange,
                    style: CustomFonts.longRange(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    CustomStrings.longRangeCost,
                    style: CustomFonts.longRangeCost(),
                  )
                ],
              ),
            ],
          ),
          const Spacer(flex: 2,),
          Container(
            height: MediaQuery.of(context).size.height / 3,
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
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          CustomStrings.accelerationSeconds,
                          style: CustomFonts.acceleration(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          CustomStrings.accelerationSpeed,
                          style: CustomFonts.accelerationSpeed(),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 0.3,
                      height: 57,
                      color: CustomColors.darkBlack,
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          CustomStrings.topSpeed2,
                          style: CustomFonts.acceleration(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          CustomStrings.topSpeed3,
                          style: CustomFonts.accelerationSpeed(),
                        )
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    CustomStrings.information,
                    style: CustomFonts.information(),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      CustomStrings.performanceCost,
                      style: CustomFonts.performanceCost2(),
                    ),
                    const SizedBox(
                      width: 53,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(color: CustomColors.red,strokeAlign: 3),
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
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

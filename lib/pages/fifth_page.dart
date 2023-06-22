import 'package:flutter/material.dart';
import 'package:tesla_app/pages/sixth_page.dart';
import 'package:tesla_app/services/constants/images.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/strings.dart';

class FifthPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const FifthPage({super.key, this.onPressed, required this.text});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            image: CustomImages.autoPilot,
            width: MediaQuery.of(context).size.width,
            height: 550,
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
                        CustomStrings.autoPilot,
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
                              CustomStrings.fullSelfDriving,
                              style: CustomFonts.performance(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              CustomStrings.dollar2,
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
                            CustomStrings.autoPilot2,
                            style: CustomFonts.longRange(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            CustomStrings.dollar3,
                            style: CustomFonts.longRangeCost(),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 75),
                    child: Text(
                      CustomStrings.information2,
                      style: CustomFonts.information(),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        CustomStrings.fifthPageCost,
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SixThPage(),
                            ),
                          );
                        },
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

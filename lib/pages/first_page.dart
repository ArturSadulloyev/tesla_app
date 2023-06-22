import 'package:flutter/material.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/icons.dart';
import 'package:tesla_app/services/constants/images.dart';
import 'package:tesla_app/services/constants/strings.dart';
import 'package:tesla_app/views/button.dart';
import 'package:tesla_app/views/second_page_view.dart';
import '../services/constants/colors.dart';

class FirstPage1 extends StatefulWidget {
  const FirstPage1({super.key});

  @override
  State<FirstPage1> createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkBlack,
      appBar: AppBar(
        elevation: 0,
        shadowColor: CustomColors.darkBlack,
        toolbarHeight: 100,
        primary: false,
        backgroundColor: CustomColors.darkBlack,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image(
            image: CustomIcons.teslaAppBar,
            height: 18.55,
            width: 112,
            color: CustomColors.lightBlack,
          ),
        ),
        bottom: TabBar(
          indicatorColor: CustomColors.transparent,
          overlayColor: MaterialStateProperty.all(CustomColors.darkBlack),
          controller: controller,
          tabs: [
            Tab(
              height: 104,
              icon: Column(
                children: [
                  Text(
                    CustomStrings.tesla,
                    style: CustomFonts.modelY(),
                  ),
                  const Spacer(),
                  Text(
                    CustomStrings.modelY,
                    style: CustomFonts.modelY2(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Image(
              image: CustomImages.teslaFirstPage,
              height: 338,
            ),
          ),
          Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  Text(
                    CustomStrings.range,
                    style: CustomFonts.range(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    CustomStrings.rangeSub,
                    style: CustomFonts.rangeSub(),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 0.3,
                height: 57,
                color: CustomColors.white,
              ),
              const SizedBox(width: 40),
              Column(
                children: [
                  Text(
                    CustomStrings.range2,
                    style: CustomFonts.range(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    CustomStrings.rangeSub2,
                    style: CustomFonts.rangeSub(),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CustomStrings.acceleration1,
                style: CustomFonts.acceleration1(),
              ),
              Text(
                CustomStrings.acceleration2,
                style: CustomFonts.acceleration2(),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CustomStrings.topSpeedMain1,
                style: CustomFonts.acceleration1(),
              ),
              Text(
                CustomStrings.topSpeedMain2,
                style: CustomFonts.acceleration2(),
              )
            ],
          ),
          const Spacer(
            flex: 4,
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPageView(),
                ),
              );
            },
            height: 64,
            width: 299,
            color1: CustomColors.red,
            color2: CustomColors.darkBlack,
            child: Text(
              CustomStrings.orderNow,
              style: CustomFonts.orderNow(),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}

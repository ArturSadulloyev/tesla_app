import 'package:flutter/material.dart';
import 'package:tesla_app/pages/fifth_page.dart';
import 'package:tesla_app/pages/fourth_page.dart';
import 'package:tesla_app/pages/second_page.dart';
import 'package:tesla_app/pages/third_page.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/strings.dart';
import 'package:tesla_app/views/tab_bar_button.dart';
import '../services/constants/colors.dart';
import '../services/constants/icons.dart';

class SecondPageView extends StatefulWidget {
  const SecondPageView({super.key});

  @override
  State<SecondPageView> createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  late final PageController controller;

  int selectedIndex = 0;
  int lastPage = 0;

  final TextStyle style = CustomFonts.tapBar();

  final buttons = [
    CustomStrings.car1,
    CustomStrings.exterior2,
    CustomStrings.interior3,
    CustomStrings.interior4,
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  void onTapTab(int i) {
    if (i <= lastPage) {
      selectedIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }

  void onPressButton(int i) {
    selectedIndex = i;
    lastPage = lastPage < i ? i : lastPage;
    setState(() {});
    controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.arrow_back,
            color: CustomColors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image(
          image: CustomIcons.teslaAppBar,
          height: 18.55,
          width: 112,
          color: CustomColors.lightBlack,
        ),
        backgroundColor: CustomColors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                  TabBarButton(
                    onPressed: () => onTapTab(i),
                    text: buttons[i],
                    i: i,
                    selectedIndex: selectedIndex,
                    lastPage: lastPage,
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SecondPage(
            text: buttons[0],
            onPressed: () => onPressButton(1),
          ),
          ThirdPage(
            text: buttons[1],
            onPressed: () => onPressButton(2),
          ),
          FourthPage(
            text: buttons[2],
            onPressed: () => onPressButton(3),
          ),
          FifthPage(
            text: buttons[3],
          )
        ],
      ),
    );
  }
}

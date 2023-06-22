import 'package:flutter/material.dart';
import 'package:tesla_app/services/constants/fonts.dart';
import 'package:tesla_app/services/constants/icons.dart';
import 'package:tesla_app/services/constants/images.dart';
import 'package:tesla_app/services/constants/strings.dart';
import '../services/constants/colors.dart';

class SixThPage extends StatefulWidget {
  const SixThPage({super.key});

  @override
  State<SixThPage> createState() => _SixThPageState();
}

class _SixThPageState extends State<SixThPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: CustomImages.lastPageRedTesla,
            height: 690,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.65,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: CustomColors.darkBlack,
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
                  const Spacer(flex: 2,),
                  Text(
                    CustomStrings.summary,
                    style: CustomFonts.select(),
                  ),
                  const Spacer(flex: 2,),
                  Text(
                    CustomStrings.youngModelY,
                    style: CustomFonts.modelY(),
                  ),
                  const Spacer(),
                  Text(
                    CustomStrings.lastPageCost,
                    style: CustomFonts.range(),
                  ),
                  const Spacer(flex: 2,),
                  const Image(
                    image: CustomIcons.payIcon,
                    width: 299,
                    height: 64,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: CustomIcons.teslaAppBar,
                height: 18.55,
                width: 112,
              ),
            ),
          )
        ],
      ),
    );
  }
}

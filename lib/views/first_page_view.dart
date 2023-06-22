import 'package:flutter/material.dart';
import 'package:tesla_app/pages/first_page.dart';

class FirstPageView extends StatefulWidget {
  const FirstPageView({super.key});

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [
          FirstPage1(),
        ],
      ),
    );
  }
}

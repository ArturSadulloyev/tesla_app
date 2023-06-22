import 'package:flutter/material.dart';
import 'package:tesla_app/views/first_page_view.dart';
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/first_page",
      routes: {
        "/first_page":(context) => const FirstPageView(),
      },
    );
  }
}

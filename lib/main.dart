import 'package:flutter/material.dart';

import 'lauout/page_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talent trove',
      debugShowCheckedModeBanner: false,
      initialRoute: PageLayout.routeName,
      routes: {
        PageLayout.routeName: (context) => PageLayout(),
      },

    );
  }
}


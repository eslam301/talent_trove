import 'package:flutter/material.dart';
import 'package:talent_trove/pages/Register/sign_in.dart';
import 'package:talent_trove/pages/Register/sign_up.dart';
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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: PageLayout.routeName,
      routes: {
        PageLayout.routeName: (context) => const PageLayout(),
        SignUp.routeName: (context) => SignUp(),
        SignIn.routeName: (context) => SignIn(),
      },
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talent_trove/core/widgets/text_area.dart';
import 'package:talent_trove/pages/Register/sign_up.dart';

import '../../core/widgets/app_button.dart';
import '../../lauout/page_layout.dart';


class SignIn extends StatelessWidget {
  static const String routeName = '/sign_in';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final int currentPage = 0;
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: 89,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              const Positioned(
                  right: -110,
                  child: Text('alent Trove',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold))),
              SvgPicture.asset("assets/icons/T_logo.svg",
                  width: 72, height: 62),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 150),
        child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Login your Account",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          )),
                      TextAreaApp(
                        Title: "Email",
                        controller: emailController,
                        hint: 'Enter your email here',
                        backgroundColor: const Color(0xccdfe3e7),
                      ),
                      TextAreaApp(
                        Title: "Password",
                        controller: passwordController,
                        hint: 'Enter your password here',
                        backgroundColor: const Color(0xccdfe3e7),
                      ),
                      ButtonApp(onPressed: () {
                        Navigator.pushReplacementNamed(context, PageLayout.routeName);
                      }, text: "Sign In",
                          backgroundColor: const Color(0xff2990F1),
                          textColor: Colors.white,
                        width: 500,

                      ),
                      const Text("- OR -",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB0BAC3),
                          )),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text("Create an account?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C838A),
                            )),
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, SignUp.routeName);
                        }, child: const Text("Sign-Up"))
                      ])
                    ]),
              ),
              SizedBox(
                  width: 850,
                  height: 650,
                  child: Image.asset('assets/images/sign_in_image.png')),
            ])),
      ),
    );
  }

  void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, PageLayout.routeName);
  }
}

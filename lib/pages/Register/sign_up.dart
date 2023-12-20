import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talent_trove/pages/Register/sign_in.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/text_area.dart';

class SignUp extends StatelessWidget {
  static const String routeName = 'SignUp';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController titleJobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  SignUp({super.key});


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
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 80.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: SizedBox(
                    width: 850,
                    height: 650,
                    child: Image.asset('assets/images/sign_up_image.png'))
              ),
              SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Create an account",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          )),
                      TextAreaApp(
                        Title: "Name",
                        controller: nameController,
                        hint: 'Tanzir Rahman',
                      ),
                      TextAreaApp(
                        Title: "Email Address",
                        controller: emailController,
                        hint: 'hello@example.com',
                      ),
                      TextAreaApp(
                        Title: "Title Job",
                        controller: titleJobController,
                        hint: 'Software eng',
                      ),
                      TextAreaApp(
                        Title: "Password",
                        controller: passwordController,
                        hint: '●●●●●●●●●●●●●●',
                        isPassword: true,
                      ),
                      TextAreaApp(
                        Title: "Confirm Password",
                        controller: confirmPasswordController,
                        hint: '●●●●●●●●●●●●●●',
                        isPassword: true,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text("already have an account?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C838A),
                            )),
                        TextButton(onPressed: () {
                          Navigator.pushReplacementNamed(context, SignIn.routeName);
                        }, child: const Text("sign-in here"))
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text("By continuing, you agree to our ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C838A),
                            )),
                        const Text("terms of service.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xffff0000))
                        )]),
                      ButtonApp(onPressed: () {},
                        text: "Sign Up",
                        backgroundColor: const Color(0xff2990F1),
                        textColor: Colors.white,
                        width: 500,
                      ),
                    ]),
              ),
            ]
          ),
        ),
      )
    );
  }
}

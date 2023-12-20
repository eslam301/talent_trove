
import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/text_area.dart';

class ProfileView extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController = TextEditingController();

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 250),
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "User Profile",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff6C7894),
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: Color(0xff6C7894),
                    decoration: TextDecoration.underline
                  )
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset('assets/images/user_image.png')),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "#Soking",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )
                      ),
                      Text(
                          "Backend dev",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )
                      )

                    ]
                  ),
                  Spacer(),
                  ButtonApp(onPressed: (){},text : 'Upload New Photo' ),
                  ButtonApp(onPressed: (){}, text: 'Delete', backgroundColor: Color(0xffFF0000),)
                ]
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAreaApp(Title: 'First name', hint: 'eg.alaa',controller: firstNameController,),
                  TextAreaApp(Title: 'Last name', hint: 'eg.Mohamed',controller: lastNameController,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAreaApp(Title: 'Email Address',prefixIcon: Icons.email,controller: emailController,),
                  TextAreaApp(Title: 'Phone Number',prefixIcon: Icons.phone_android,controller: phoneNumberController,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAreaApp(Title: 'Current Password',prefixIcon: Icons.key,controller: passwordController,isPassword: true,),
                  TextAreaApp(Title: 'New Password',prefixIcon: Icons.key,controller:newPasswordController ,isPassword: true,),
                ],
              ),
              TextAreaApp(Title: 'confirm New Password',prefixIcon: Icons.key,controller:confirmNewPasswordController ,isPassword: true,width: double.infinity,),
              SizedBox(height: 50),
              Row(
                children: [
                  ButtonApp(onPressed: (){}, text: 'Save Changes'),
                  ButtonApp(onPressed: (){}, text: 'cancel', backgroundColor: Colors.white, textColor: Color(0xff6C7894)),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

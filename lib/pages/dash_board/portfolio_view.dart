import 'package:flutter/material.dart';
import 'package:talent_trove/core/widgets/app_button.dart';
import 'package:talent_trove/core/widgets/text_area.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 200),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
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
          const SizedBox(height: 40),
          const Text(
              "My CV",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff6C7894),
              )
          ),
          Row(
            children: [
              Container(
                  width: 100,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/CV.png')),
              const SizedBox(width: 20),
              ButtonApp(onPressed:(){} , text: 'Upload New CV',),
              ButtonApp(onPressed:(){} , text: 'Delete',backgroundColor: Color(0xffFF0000),),
            ]
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Column(
                children: [
                  TextAreaApp(Title: 'Title Jop',hint: 'eg. Backend dev', controller: TextEditingController()),
                  TextAreaApp(Title: 'Github Link',prefixIcon: Icons.link, controller: TextEditingController()),
                  TextAreaApp(Title: 'Linkedin Link',prefixIcon: Icons.link, controller: TextEditingController()),
                ],
              ),Column(

                children: [
                  TextAreaApp(Title: 'Description', controller: TextEditingController(),maxLines: 6,height: 200,),
                  TextAreaApp(Title: 'Phone Number',prefixIcon: Icons.phone_android, controller: TextEditingController()),
                ],
              ),
            ],
          ),
          Row(
            children: [
              ButtonApp(onPressed: (){}, text: 'Save Changes'),
              ButtonApp(onPressed: (){}, text: 'cancel', backgroundColor: Colors.white, textColor: const Color(0xff6C7894)),
            ],
          )
        ]
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageLayout extends StatelessWidget {
  static const String routeName = '/page_layout';
  const PageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: 89,
        leading: Padding(
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
              SvgPicture.asset("assets/icons/T_logo.svg", width: 72, height: 62),
            ],
          ),
        ),
        title: SizedBox(
          width: 550,
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Home",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: const Text("Dashboard",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: const Text("Register",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: const Text("About Us",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset("assets/icons/Bell.svg"),
          ),
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "#Soking",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            Text(
              'Back end developer',
              style: TextStyle(
                  color: Color(0xff757575),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset("assets/images/user_image.png"),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.black)
            ],
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 80.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Professional Portfolio.  Your Expertise Online ",
                      style: TextStyle(fontSize: 72, fontWeight: FontWeight.w400)),
                  const Text("""
This platform boasts a contemporary and user-friendly design, 

offering a comprehensive view of your professional journey.   It combines essential information with engaging visuals 

to present your skills, experiences, and achievements in an impactful way. 

The site is optimized for different devices, ensuring accessibility and a seamless browsing experience
                      """,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575))),
                  FilledButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),

                            )
                        ),

                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 48.0, vertical: 24.0
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.black,
                        ),
                        ),
                      child: const Text('Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w400
                          ))
                      )

                ]),
                Stack(
                  children: [
                    Positioned(
                        top: 35,
                        left: 23,
                        child: SvgPicture.asset('assets/icons/Star6.svg',color: Colors.black,)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
                      width: 482,
                      height: 622,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(800.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Image.asset("assets/images/landing_image.png"),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: SvgPicture.asset('assets/icons/SoftStar.svg',color: Colors.black,)),
                  ],
                )
              ]),
              const Column(
                children: [
                  Divider(
                    color: Color(0xffD4D2E3),
                  ),
                  Text(
                      "Copyright © 2023 TalentTrove | All Rights Reserved | Terms and Conditions | Privacy Policy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffADABC3),
                      )
                  ),
                ],
              )
            ],
          )),
    );
  }
}

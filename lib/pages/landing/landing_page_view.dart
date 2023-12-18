import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        ));
  }
}

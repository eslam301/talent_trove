import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talent_trove/core/widgets/FAndQ_widget.dart';

class FANDQ extends StatelessWidget {
  const FANDQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          width: double.infinity,
          height: 260,
          color: const Color(0xffEFEDE0),
          child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                    top: -50,
                    child: SvgPicture.asset('assets/icons/StarUP.svg')),
                const Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Text(
                        'F.A.Q.',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53686A),
                        )
                    ),
                    SizedBox(height: 10),
                    Text(
                        "With you to the Top",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6C7894),
                        )
                    ),
                    SizedBox(height: 16),
                    Text(
                        "Have any questions? We're here to assist you.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff53686A),
                        )
                    )
                  ],
                )
              ]
          ),
        ),
        const Row(children: [
          Spacer(),
          FAndQWidget(),
          FAndQWidget(),
          FAndQWidget(),
          Spacer(),
        ],),
        const Row(children: [
          Spacer(),
          FAndQWidget(),
          FAndQWidget(),
          FAndQWidget(),
          Spacer(),
        ],)
      ]
    );
  }
}

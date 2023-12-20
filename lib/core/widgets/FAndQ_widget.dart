import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAndQWidget extends StatelessWidget {
  const FAndQWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 200,
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 10,
              blurRadius: 15,
            )
          ]
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/icons/van_icon.png'),
            Text(
                "How do I check order delivery status ?",
                style: TextStyle(
                  fontSize: 17.6402587890625,
                  fontWeight: FontWeight.w500,
                )
            ),
            Text(
                "Please tap on “My Orders” section under main menu of App/Website/M-site to check your order status.",
                softWrap: true,

                style: TextStyle(
                  fontSize: 14.112207412719727,
                  fontWeight: FontWeight.w400,
                )
            )
          ]
      ),
    );
  }
}

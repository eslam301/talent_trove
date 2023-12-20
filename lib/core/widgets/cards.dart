import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReactionCard extends StatelessWidget {
  String title;
  String count;
  String imgIconPath;
  ReactionCard({
    super.key,
    required this.title,
    required this.count,
    required this.imgIconPath
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30
      ),
      width: 254,
      height: 182,
      decoration: BoxDecoration(
        color: const Color(0xfffcfcfc),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 15,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imgIconPath),
          Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff64748B),
              )
          ),
          Text(
              count,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              )
          )
        ]
      )
    );
  }
}

import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double width;
  final double height;
  final double textFontSize;
  const ButtonApp({super.key ,
    required this.onPressed ,
    this.backgroundColor = const Color(0xff324D6C),
    required this.text,
    this.textColor = const Color(0xffFFFFFF),
    this.width = 200,
    this.height = 60,
    this.textFontSize = 16,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
      ),
      child: FilledButton(onPressed: onPressed,
          style: ButtonStyle(
            side: MaterialStateBorderSide.resolveWith(
                  (states) =>const BorderSide(
                    width: 1.0,
                    color: Color(0xff324D6C),
                  ),
            ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),

              ),
              backgroundColor:
              MaterialStateProperty.all(
                backgroundColor,
              )
          ),

          child: Text(
              text,
              style: TextStyle(
                  fontSize: textFontSize,
                  fontWeight: FontWeight.w700,
                  color: textColor,
              )
          )),
    );
  }
}

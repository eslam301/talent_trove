import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuButton extends StatelessWidget {
  final bool isSelected ;
  final String svgIconPath;
  final String title;
  final VoidCallback onTap ;
  const MenuButton({
    super.key,
    this.isSelected = false,
    required this.svgIconPath,
    required this.title,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        height: 50,
        margin: const EdgeInsets.symmetric(
          vertical: 0,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffD8D8D8): Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgIconPath),
            const SizedBox(width: 10),
            Text(title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: isSelected ? Color(0xff2990F1) : Color(0xff6C7894),
                )),
          ],
        ),
      ),
    );
  }
}

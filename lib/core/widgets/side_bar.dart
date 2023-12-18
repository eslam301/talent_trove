import 'package:flutter/material.dart';
import 'menu_button.dart';

class SideBar extends StatelessWidget {
  int index ;
  SideBar({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 51, horizontal: 25),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 15,
            offset: const Offset(0, 15), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              Image.asset("assets/images/user_image.png", width: 57, height: 58),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Hello 👋",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                  Text(
                      "#Soking",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                  Text(
                      "Backend Dev.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )
                  )
                ]
              )// your images
            ]
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
                "Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff405D9F)
                ),
                textAlign: TextAlign.start
            ),
          ),
          MenuButton(isSelected: true, svgIconPath: "assets/icons/Home.svg", title: "Home",),
          MenuButton(isSelected: false, svgIconPath: "assets/icons/Chart.svg", title: "Projects",),
          MenuButton(isSelected: false, svgIconPath: "assets/icons/Message.svg", title: "Notices",),
        ]
      )
    );
  }
}

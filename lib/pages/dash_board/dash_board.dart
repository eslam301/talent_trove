
import 'package:flutter/material.dart';
import 'package:talent_trove/pages/dash_board/notices_view.dart';
import 'package:talent_trove/pages/dash_board/portfolio_view.dart';
import 'package:talent_trove/pages/dash_board/profile_view.dart';
import '../../core/widgets/menu_button.dart';
import 'ProjectsView.dart';
import 'f_and_q.dart';
import 'home.dart';

class DashBoard extends StatefulWidget {

  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> pages = [
    Home(),
    ProjectsView(),
    NoticesView(),
    ProfileView(),
    PortfolioView(),
    FANDQ(),

  ];
  int index = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
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
                          Container(
                              width: 57,
                              height: 58,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/user_image.png", width: 57, height: 58)),
                          const SizedBox(width: 8),
                          const Column(
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
                    MenuButton(isSelected: index==0 ? true : false, svgIconPath: "assets/icons/Home.svg", title: "Home", onTap: (){ setState(() {index = 0;});},),
                    MenuButton(isSelected: index==1 ? true : false, svgIconPath: "assets/icons/Chart.svg", title: "Projects",onTap: (){ setState(() {index = 1;});},),
                    MenuButton(isSelected: index==2 ? true : false, svgIconPath: "assets/icons/Message.svg", title: "Notices",onTap: (){ setState(() {index = 2;});},),
                    const Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff405D9F)
                        )
                    ),
                    MenuButton(isSelected: index==3 ? true : false, svgIconPath: "assets/icons/Profile.svg", title: "Profile",onTap: (){ setState(() {index = 3;});},),
                    MenuButton(isSelected: index==4 ? true : false, svgIconPath: "assets/icons/ProfileMenue.svg", title: "Portfolio",onTap: (){ setState(() {index = 4;});},),
                    MenuButton(isSelected: index==5 ? true : false, svgIconPath: "assets/icons/Info Square.svg", title: "FAQ’s",onTap: (){ setState(() {index = 5;});},),
                    MenuButton(isSelected: index==6 ? true : false, svgIconPath: "assets/icons/Logout.svg", title: "Logout",onTap: (){ setState(() {});},),
                  ]
              )
          ),//sidebar
          Expanded(
            child: pages[index],
          )
        ]
      )
    );
  }
}

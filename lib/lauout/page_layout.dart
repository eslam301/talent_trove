import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/dash_board/dash_board.dart';
import '../pages/landing/landing_page_view.dart';


class PageLayout extends StatefulWidget {
  static const String routeName = '/page_layout';

  const PageLayout({super.key});

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  List pages = const [LandingView(), DashBoard(), LandingView()];
  int currentPage = 1;

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
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                child: Text("Home",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: currentPage == 0 ? Color(0xff2990F1):Colors.black )),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                child: Text("Dashboard",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: currentPage == 1 ? Color(0xff2990F1):Colors.black)),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: Text("Register",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: currentPage == 2 ?  Color(0xff2990F1):Colors.black)),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: Text("About Us",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: currentPage == 3 ? Color(0xff2990F1):Colors.black ),
              ),
              )],
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
      body:pages[currentPage],
    );
  }
}

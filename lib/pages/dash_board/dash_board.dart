import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/side_bar.dart';

class DashBoard extends StatelessWidget {
  int dashBoardIndex = 0;
  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SideBar(index: dashBoardIndex,),
        ]
      )
    );
  }
}

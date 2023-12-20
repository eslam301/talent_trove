import 'package:flutter/material.dart';

class ViewCard extends StatelessWidget {
  const ViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:9),
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffD8D8D8),
            )
          )
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/images/Avatar.png') ,),
          SizedBox(width: 8),
          Text(
              "Neil Sims",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
          )
        ],
      ),
    );
  }
}

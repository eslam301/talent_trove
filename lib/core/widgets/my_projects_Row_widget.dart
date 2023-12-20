import 'package:flutter/material.dart';

class MyProjectsRowWidget extends StatelessWidget {
  const MyProjectsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundImage: AssetImage("assets/images/Avatar.png"),),
          Text(
              "HealthLink Data Exchange",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4D5E80)
              )
          ),
          Text(
              "2",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4D5E80)
              )
          ),
          Text(
              "20",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4D5E80)
              )
          ),
          Row(

            children: [
              Icon(Icons.edit,color: Color(0xffC3CAD9),),
              SizedBox(width: 10),
              Icon(Icons.delete,color: Color(0xffC3CAD9),),
              SizedBox(width: 10),
              Icon(Icons.remove_red_eye,color: Color(0xffC3CAD9),),
            ],
          ),
        ]
    );
  }
}

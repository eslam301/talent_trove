import 'package:flutter/cupertino.dart';

class TopProjectViewWidget extends StatelessWidget {
  const TopProjectViewWidget({super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "EcoTrack",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )
                ),
                Text(
                    " React Native, Node.js, MongoDB",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )
                ),
              ]
            ),
            Spacer(),
            Text(
                "235 Likes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )
            )
          ]
        )
    );
  }
}

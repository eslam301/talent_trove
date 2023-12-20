import 'package:flutter/cupertino.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffE2E8F0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Column(
            children: [
              Text(
                  "TITLE",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )
              ),
              Text(
                  "Ahmed commented for you",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )
              ),
              Text(
                  "Ahmed liked the Health project",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )
              ),
              Text(
                  "beshoy commented for you",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )
              ),
              Text(
                  "beshoy commented for you",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )
              ),
            ]
          )
        ],
      )
    );
  }
}

import 'package:flutter/cupertino.dart';

class MessageRowWidget extends StatelessWidget {
  final String title;
  final String date;
  const MessageRowWidget({super.key, required this.title, required this.date});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff64748B),
              )),
          Text(
              date,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff64748B),
              )
          )
        ]
    );
  }
}

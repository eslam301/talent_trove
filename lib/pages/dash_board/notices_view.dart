import 'package:flutter/material.dart';

import '../../core/widgets/message_row.dart';

class NoticesView extends StatelessWidget {
  const NoticesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 650,
          height: MediaQuery.of(context).size.height * 0.8,
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffE2E8F0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("TITLE",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                Text("Date",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.71,
              width: double.infinity,
              child: ListView.separated(
                itemBuilder: (context, index) => const MessageRowWidget(
                    title: 'Ahmed commented for you', date: '12:00 PM'),
                itemCount: 50,
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) { return const Divider(); },
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

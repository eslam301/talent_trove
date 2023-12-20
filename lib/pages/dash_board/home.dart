import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/cards.dart';
import '../../core/widgets/top_projects.dart';
import '../../core/widgets/view_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 51, horizontal: 25),
        color: Colors.white,
        child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReactionCard(title: 'Projects', count: '13', imgIconPath: 'assets/images/Projects.png',),
                    ReactionCard(title: 'Comments', count: '100', imgIconPath: 'assets/images/messages.png',),
                    ReactionCard(title: 'Views', count: '1349', imgIconPath: 'assets/images/views.png',),
                    ReactionCard(title: 'Likes', count: '1,200', imgIconPath: 'assets/images/like.png',),
                  ]
              ),
              const SizedBox(height: 50),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 332,


                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 15,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                              "Recent Profile Visitors",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )
                          ),
                          const SizedBox(height:16),
                          ListView.builder(itemBuilder: (context, index) => const ViewCard(), itemCount: 6, scrollDirection: Axis.vertical, shrinkWrap: true,),
                        ]
                      ),

                    ),
                    Container(
                      width: 340,
                      height:364,
                      child: Column(
                        children: [
                          Text(
                              "Top Porjects",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )
                          ),
                          SizedBox(height: 16,),
                          ListView.builder(itemBuilder: (context, index) => const TopProjectViewWidget(), itemCount: 6, scrollDirection: Axis.vertical, shrinkWrap: true,),
                        ]
                      ),
                    )
                  ]
              ),
            ]
        ),
      ),
    );
  }
}

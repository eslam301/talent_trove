import 'package:flutter/material.dart';
import '../../core/widgets/row_of_input_fields.dart';
import '../../core/widgets/my_projects_Row_widget.dart';

class ProjectsView extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
        margin:const EdgeInsets.only(top: 51, bottom: 51, left: 91, right: 650),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("My Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(height: 24),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Avatar",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7D8FB3))),
                Text("Project Name",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7D8FB3))),
                Text("Likes",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7D8FB3))),
                Text("Comments",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7D8FB3))),
                Text("Author",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7D8FB3))),
              ]),
          const Divider(
            thickness: 2,
          ),
          ListView.separated(
            itemBuilder: (context, index) => const MyProjectsRowWidget(),
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 2,
              );
            },
            itemCount: 5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          ),
          const SizedBox(height: 49),
          SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end  ,
              children: [
                const Text("Add Project",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(height: 24),
                RowOfInputFields(controller: titleController,title: "title",),
                SizedBox(height: 15,),
                RowOfInputFields(controller: titleController,title: "Link",),
                SizedBox(height: 15,),
                RowOfInputFields(controller: titleController,title: "Description:",),
                SizedBox(height: 15,),
                Row(

                  children: [
                    Text(
                        "Upload Image:",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    FilledButton(onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              )
                          )
                        ),
                        child: const Text(
                        "Choose",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )
                    ))
                  ]
                ),
                const SizedBox(height: 15,),
                FilledButton(onPressed: (){},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 126.0, vertical: 14.0
                          )
                      ),
                        backgroundColor: MaterialStateProperty.all(Color(0xff09710e)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            )
                        )
                    ),
                    child: const Text(
                        "Choose",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )
                    ))
              ]
            ),
          )

        ]));
  }
}

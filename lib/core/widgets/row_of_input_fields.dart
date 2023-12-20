import 'package:flutter/material.dart';

class RowOfInputFields extends StatelessWidget {
  String title ;
  TextEditingController controller;
  int? maxLines = 1;

  RowOfInputFields({
    super.key,
    required this.controller,
    required this.title,
    this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            )
        ),
        SizedBox(
          width: 334,
          height: 40,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: "Enter $title",
              filled: true,
              border:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffA0AEC0),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),

            ),

          ),
        )
      ]
    );
  }
}

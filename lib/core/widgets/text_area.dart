import 'package:flutter/material.dart';

class TextAreaApp extends StatefulWidget {
  final String Title;
  final String? hint;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int maxLines;
  final Color backgroundColor;
  final double width;
  final double height;
  final bool isPassword;


  const TextAreaApp({
    super.key,
    required this.Title,
    required this.controller,
    this.hint,
    this.prefixIcon,
    this.isPassword = false,
    this.width = 500,
    this.height = 100,
    this.maxLines = 1,
    this.backgroundColor = const Color(0xffFFFFFF),
  });

  @override
  State<TextAreaApp> createState() => _TextAreaAppState();
}

class _TextAreaAppState extends State<TextAreaApp> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: const EdgeInsets.symmetric( horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.Title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff6C7894),
              )),
          SizedBox(height: 10),
          TextField(
            maxLines: widget.maxLines,
            controller: widget.controller,

            obscureText: widget.isPassword ? obscureText : false,
              decoration: InputDecoration(

                  hintText: widget.hint,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0x88ABB1BB),
                  ),
                  prefixIcon:Icon(widget.prefixIcon) ,
                  suffixIcon:  widget.isPassword ?IconButton(
                    onPressed: () {
                      obscureText = !obscureText;
                      setState(() {

                      });
                    },
                    icon: Icon(
                      obscureText? Icons.visibility : Icons.visibility_off ,
                    )
                  ) : null,
                  filled: true,
                  fillColor: widget.backgroundColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffD1D5DB),
                    ),
                  )))
        ],
      ),
    );
  }
}

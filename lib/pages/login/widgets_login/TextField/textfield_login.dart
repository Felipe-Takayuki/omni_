import "package:flutter/material.dart";

class ResponsiveTextField extends StatefulWidget {
  final String titlelabeltext;
  final bool invisible;
  
  const ResponsiveTextField({super.key, required this.titlelabeltext, required this.invisible});

  @override
  State<ResponsiveTextField> createState() => _ResponsiveTextFieldState();
}

class _ResponsiveTextFieldState extends State<ResponsiveTextField> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return SizedBox(
          width: _width * 0.8,
          height: _height * 1/12,
             child: TextFormField(
              obscureText: widget.invisible,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 disabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.red, width: 1.5),
                 ),
                 enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 labelText: widget.titlelabeltext,
                 
                 labelStyle: TextStyle(color
             : Colors.white, fontSize: _width * 1/20),
               ),
             ),
           );
  }
}
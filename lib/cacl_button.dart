import 'package:flutter/material.dart';

class cacl_button extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int txtcolor;
  final double size;
  final Function callback;

  const cacl_button({
    required this.text, required this.fillcolor, required this.txtcolor, required this.size,  required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),

              ),
              backgroundColor: Color(fillcolor)
          ),
          child: Text(text,style: TextStyle(color: Color(txtcolor),fontSize: size),),
          onPressed: (){
            callback(text);
          },
        ),
      ),
    );
  }
}

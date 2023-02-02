import 'package:cacl/cacl_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int? firstnum;

  int? secondnum;

  String? history;

  String? txtdisplay;

  String? res;

  String? operation;

  void btnonclick(String btnvalue) {
    print(btnvalue);
    if (btnvalue == 'c') {
      txtdisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnvalue == 'AC') {
      txtdisplay = '';
      firstnum = 0;
      secondnum = 0;
      history = '';
      res = '';
    } else if (btnvalue == '+' || btnvalue == '-' || btnvalue == 'x' ||
        btnvalue == '/') {
      firstnum=int.parse(txtdisplay!);
      res='';
      operation=btnvalue;
    }else if(btnvalue=='='){
      secondnum=int.parse(txtdisplay!);
      if(operation=='+'){
        res=(firstnum! + secondnum!).toString();
        history=firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if(operation=='-'){
        res=(firstnum! - secondnum!).toString();
        history=firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if(operation=='/'){
        res=(firstnum! / secondnum!).toString();
        history=firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if(operation=='x'){
        res=(firstnum! * secondnum!).toString();
        history=firstnum.toString() + operation.toString() + secondnum.toString();
      }

    }
    else{
      res=int.parse(txtdisplay!+btnvalue).toString();

    }
    setState(() {
      txtdisplay=res;
    });
  }

@override
Widget build(BuildContext context) {
  // TODO: implement build
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: (
          Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      history!, style: TextStyle(color: Colors.white70,
                        fontSize: 35,
                        fontWeight: FontWeight.w400),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      txtdisplay!, style: TextStyle(color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w700),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cacl_button(
                      text: 'AC',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: 'C',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '<',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '/',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cacl_button(
                      text: '9',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '8',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '7',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: 'x',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cacl_button(
                      text: '6',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '5',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '4',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '-',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cacl_button(
                      text: '3',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '2',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '1',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '+',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cacl_button(
                      text: '+/-',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '0',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '00',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFF0099ff,
                      callback: btnonclick,
                    ),
                    cacl_button(
                      text: '=',
                      size: 24,
                      txtcolor: 0XFFffffff,
                      fillcolor: 0XFFff9900,
                      callback: btnonclick,
                    ),
                  ],
                )
              ],
            ),
          )),
    ),
  );
}
}


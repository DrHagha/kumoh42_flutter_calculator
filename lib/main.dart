import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    String _title = "Kumoh42 Flutter App";
    MaterialColor _backgroundColor = Colors.red;

  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: _backgroundColor,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp> {

  double argument = 0; //결과 값
  int parameter = 0; // 가인수

  String? selectedOper;

  var mainColor = Colors.yellow;

  Map<String, dynamic> operator = {
    "All Clear" : "AC",
    "EQUAL" : "=",
    "PLUS" : "+",
    "MINUS" : "-",
    "MULTIPLE" : "*",
    "DIVISION" : "/",
  };

  Widget build(BuildContext context){

    var buttonWidth = (MediaQuery.of(context).size.width * 0.9) / 4;
    var buttonheight = (MediaQuery.of(context).size.width * 0.9) / 5;

    return Scaffold(

      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Text("결과 : $argument"),
            Text("$parameter"),
            
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            argument = 0;
                            parameter = 0;
                            selectedOper = "";
                          });
                        },
                        child: Text(operator["All Clear"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth * 3,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            selectedOper = operator["DIVISION"];
                            argument = parameter.toDouble();
                            parameter = 0;
                          });
                        },
                        child: Text(operator["DIVISION"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      )
                    ],
                  ),
                  
                  Row(
                    children: <Widget>[
                     OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 1;
                          });
                        },
                        child: Text("1"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 2;
                          });
                        },
                        child: Text("2"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 3;
                          });
                        },
                        child: Text("3"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            selectedOper = operator["MULTIPLE"];
                            argument = parameter.toDouble();
                            parameter = 0;
                          });
                        },
                        child: Text(operator["MULTIPLE"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: <Widget>[
                     OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 4;
                          });
                        },
                        child: Text("4"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 5;
                          });
                        },
                        child: Text("5"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 6;
                          });
                        },
                        child: Text("6"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            selectedOper = operator["PLUS"];
                            argument = parameter.toDouble();
                            parameter = 0;
                          });
                        },
                        child: Text(operator["PLUS"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: <Widget>[
                     OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 7;
                          });
                        },
                        child: Text("7"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 8;
                          });
                        },
                        child: Text("8"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10) + 9;
                          });
                        },
                        child: Text("9"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            selectedOper = operator["MINUS"];
                            argument = parameter.toDouble();
                            parameter = 0;
                          });
                        },
                        child: Text(operator["MINUS"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: <Widget>[
                     OutlinedButton(
                        onPressed: (){
                          setState(() {
                            parameter = (parameter * 10);
                          });
                        },
                        child: Text("0"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth * 3,buttonheight)
                        ),
                      ),
                      
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            if(selectedOper == operator["PLUS"]){
                              argument = parameter + argument;
                            }else if(selectedOper == operator["MINUS"]){
                              argument = parameter - argument;
                            }else if(selectedOper == operator["MULTIPLE"]){
                              argument = parameter * argument;
                            }else if(selectedOper == operator["DIVISION"]){
                              argument = parameter / argument;
                            }else{
                              argument = 0;
                              parameter = 0;
                            }
                            parameter = 0;
                          });
                        },
                        child: Text(operator["EQUAL"]),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      )

    );
  }
}
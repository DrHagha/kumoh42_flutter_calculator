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

  double argument = 0;
  int parameter = 0;

  var mainColor = Colors.yellow;

  Map<String, dynamic> operator = {
    "PLUS" : "+",
    "MINUS" : "-",
    "MULTIPLE" : "*",
    "DIVISION" : "/",
    "REMAIN" : "%"
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
                        onPressed: (){},
                        child: Text("AC"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth * 3,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("/"),
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
                        onPressed: (){},
                        child: Text("1"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("2"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("3"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("*"),
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
                        onPressed: (){},
                        child: Text("4"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("5"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("6"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("+"),
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
                        onPressed: (){},
                        child: Text("7"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("8"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("9"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth,buttonheight)
                        ),
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("-"),
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
                        onPressed: (){},
                        child: Text("0"),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: mainColor,
                          fixedSize: Size(buttonWidth * 3,buttonheight)
                        ),
                      ),
                      
                      OutlinedButton(
                        onPressed: (){},
                        child: Text("*"),
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
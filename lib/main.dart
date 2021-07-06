import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teirei706/NextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //Image.asset('assets/b.jpg'),
            Positioned.fill(child: Image.asset('assets/a.jpg', fit: BoxFit.fill,),),
            Column(children: [
              Expanded(flex:1 ,child: (Container())),
              Text("The time to\nact is now", textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.bold)),
              //Image.asset("assets/350x350.jpg"),
              Expanded(flex:3,child: (Container())),
              Text("Your path is laid out in front of\nyou. By getting started, you\nalready took the biggest step in\nself-improvement.\nWe will guide you through it\n",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.pink[400], Colors.pink[200]],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),borderRadius: BorderRadius.all(Radius.circular(10.0)),),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Ink(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: InkWell(
                          onTap:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondRoute()),
                            );
                          },
                          child: Container(
                            height: 50,
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'Continue',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),]
        )
    );
  }
}

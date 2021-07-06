import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Stack(
                    children: [
                      Container(
                        color: Colors.blueAccent,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Container()),
                          Text("Step 1 of 3", style: TextStyle(color: Colors.white),),
                          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                            Padding(padding: EdgeInsets.all(12.0),child: Text("Next")),
                          ],),
                          Expanded(child: Container()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("What's your name?", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20.0, color: Colors.white,)),
                                ],
                              ),
                          Expanded(child: Container()),
                        ],
                      )
                    ])),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment:MainAxisAlignment.start, children: [
                          Text("What should we call you?",style: TextStyle(color:Colors.black , fontSize: 15.0),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new TextField(decoration: const InputDecoration(hintText: "Enter your name"),),
                    ),
                      ],
                    ),
              ),
            ),
          ],)
      ),
    );
  }
}
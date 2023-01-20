import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityindicatorDemo extends StatefulWidget {
  const CupertinoActivityindicatorDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityindicatorDemo> createState() => _CupertinoActivityindicatorDemoState();
}

class _CupertinoActivityindicatorDemoState extends State<CupertinoActivityindicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('CupertinoActivityIndicator Sample'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  CupertinoActivityIndicator(),
                  SizedBox(height: 10),
                  Text('Default',style: TextStyle(fontSize: 20),),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoActivityIndicator(
                      radius: 20.0, color: CupertinoColors.activeBlue),
                     SizedBox(height: 10),
                  Text(
                    // 'radius: 20.0\ncolor: CupertinoColors.activeBlue',
                    "aaaaaaaaaaaaaaaaaaaa",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoActivityIndicator(radius: 20.0, animating: false),
                  SizedBox(height: 10),
                  Text(
                    // 'radius: 20.0\nanimating: false',
                    "rrrrrrrrrrrrrrrrr",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonn extends StatefulWidget {
  const CupertinoButtonn({Key? key}) : super(key: key);

  @override
  State<CupertinoButtonn> createState() => _CupertinoButtonnState();
}

class _CupertinoButtonnState extends State<CupertinoButtonn> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoButton class'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            CupertinoButton(child:Text('defiuyoif'), onPressed:(){}),
            SizedBox(height: 10),
            CupertinoButton.filled(child:Text('dhsuyfg'), onPressed:(){}),
          ],
        ),
      ),
    );
  }
}

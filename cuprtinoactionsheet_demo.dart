import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuprtinoactionDemo extends StatefulWidget {
  const CuprtinoactionDemo({Key? key}) : super(key: key);

  @override
  State<CuprtinoactionDemo> createState() => _CuprtinoactionDemoState();
}

class _CuprtinoactionDemoState extends State<CuprtinoactionDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertinoactionsheet"),
      ),
    child: Center(
        child: CupertinoButton.filled(
            child: Text('CupertinoActionSheet'),
            onPressed:(){

          final act= CupertinoActionSheet(
            title: Text('add'),
            message: Text('meessge'),
            actions: [
              CupertinoActionSheetAction(
                onPressed: (){
                Navigator.pop(context);},
                child: Text('button 1'),
              ),
              CupertinoActionSheetAction(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('button 2'),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('cancal'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          );
          showCupertinoModalPopup(context: context,
              builder: (BuildContext context) =>act,
          );
        },
        ),
      ),
    );

  }

}

import 'package:flutter/cupertino.dart';

class CupertinoalertdialogDemo extends StatefulWidget {
  const CupertinoalertdialogDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoalertdialogDemo> createState() => _CupertinoalertdialogDemoState();
}

class _CupertinoalertdialogDemoState extends State<CupertinoalertdialogDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoAlertDialog Demo"),
      ),
        child: Center(
         child: CupertinoDialogAction(
           child: Text("CupertinoAlertDialog",),
           onPressed: (){
            final act = CupertinoAlertDialog(
               title: Text("Accept?"),
               content: Text('Do you accept '),
               actions: [
                 CupertinoDialogAction(

                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: const Text('No'),
                 ),
                 CupertinoDialogAction(
                   isDefaultAction: true,
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: const Text('Yes'),
                 ),
               ],
             );

              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) =>act,
              );
           },
         ),
        ),
    );
  }
}

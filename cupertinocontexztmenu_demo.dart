import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinocontextmenuDemo extends StatefulWidget {
  const CupertinocontextmenuDemo({Key? key}) : super(key: key);

  @override
  State<CupertinocontextmenuDemo> createState() => _CupertinocontextmenuDemoState();
}

class _CupertinocontextmenuDemoState extends State<CupertinocontextmenuDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:  CupertinoNavigationBar(
        middle: Text('CupertinoContextMenu Sample'),
      ),



      // child: Center(
      //   child: SizedBox(
      //     width: 200,
      //     height: 200,
      //     child: CupertinoContextMenu(
      //       actions:[
      //         CupertinoContextMenuAction(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           isDefaultAction: true,
      //           trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
      //           child: const Text('Copy'),
      //         ),
      //         CupertinoContextMenuAction(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           trailingIcon: CupertinoIcons.share,
      //           child: const Text('Share  '),
      //         ),
      //         CupertinoContextMenuAction(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           trailingIcon: CupertinoIcons.heart,
      //           child: const Text('Favorite'),
      //         ),
      //         CupertinoContextMenuAction(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           isDestructiveAction: true,
      //
      //           trailingIcon: CupertinoIcons.delete,
      //           child: const Text('Delete'),
      //         ),
      //       ],
      //       child: Container(
      //         decoration: BoxDecoration(
      //           color: CupertinoColors.black,
      //           borderRadius: BorderRadius.circular(20.0),
      //         ),
      //         child: const FlutterLogo(size: 500.0),
      //       ),
      //
      //
      //
      //
      //


            child: SafeArea(
              child: GridView.builder(
                itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3/4,

                  ), itemBuilder: (context,index){
                    return CupertinoContextMenu(
                      previewBuilder: (context,animation,child)=>SizedBox.expand(
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.black,
                          child: FlutterLogo(),
                        ),
                      ),
                        actions: [
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                            child: const Text('Copy'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            trailingIcon: CupertinoIcons.share,
                            child: const Text('Share  '),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            trailingIcon: CupertinoIcons.heart,
                            child: const Text('Favorite'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDestructiveAction: true,

                            trailingIcon: CupertinoIcons.delete,
                            child: const Text('Delete'),
                          ),
                        ],
                        child: FlutterLogo(),
                    );
              },
              ),
            ),



      //
      //     ),
      //   ),
      // ),
      //
      //





    );

  }
}

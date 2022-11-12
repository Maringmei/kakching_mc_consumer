import 'package:easy_loader/easy_loader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Center(
                      child: Text("Lorem Ipsum"),
                    ),
                    //// Put the loader widget at the end of the stack. You can set it to appear based on a boolean. E.g. a loading flag.
                    EasyLoader(
                      iconColor: Colors.red,
                      image: AssetImage('assets/images/trans_globizs.png'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

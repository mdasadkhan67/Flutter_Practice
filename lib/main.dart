import 'package:flutter/material.dart';

void main(){
  runApp(AppStart());
}


class AppStart extends StatefulWidget {
  const AppStart({super.key});
  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Asad Practice App",
      home: Scaffold(
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
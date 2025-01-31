import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/data_provider.dart';
import 'view/data_view.dart';

void main() => runApp(AppStart());

class AppStart extends StatefulWidget {
  const AppStart({super.key});

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DataView(),
      ),
    );
  }
}

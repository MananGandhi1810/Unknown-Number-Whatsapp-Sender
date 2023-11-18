import 'package:flutter/material.dart';

import 'presentation/home_page.dart';

void main(){
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Unknown Number Launcher',
      theme: ThemeData(
        primarySwatch : Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

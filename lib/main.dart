import 'package:flutter/material.dart';

import 'presentation/home_page.dart';

void main(){
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unknown Number Whatsapp Sender',
      theme: ThemeData(
        primarySwatch : Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:insta_app/src/screens/login/auth_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}

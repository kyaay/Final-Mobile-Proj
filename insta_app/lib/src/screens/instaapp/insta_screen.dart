import 'package:flutter/material.dart';
import 'package:insta_app/src/screens/login/auth_controller.dart';

class InstaScreen extends StatefulWidget {
  const InstaScreen(AuthController authController, {Key? key})
      : super(key: key);

  @override
  State<InstaScreen> createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "wala pa huhu",
        textAlign: TextAlign.center,
      ),
    );
  }
}

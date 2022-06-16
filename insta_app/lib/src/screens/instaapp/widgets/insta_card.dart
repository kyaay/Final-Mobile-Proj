import 'package:flutter/material.dart';
import 'package:insta_app/src/screens/instaapp/insta_model.dart';

class InstaCard extends StatelessWidget {
  final Insta insta;
  final Function()? onErase;
  final Function()? onTap;
  final Function()? onLongPress;
  final EdgeInsets? margin;
  // ignore: unused_field
  final ScrollController _sc = ScrollController();

  InstaCard(
      {required this.insta,
      this.onTap,
      this.onErase,
      this.onLongPress,
      this.margin,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

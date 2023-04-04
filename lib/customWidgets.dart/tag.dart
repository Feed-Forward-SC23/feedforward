import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';

class Tag extends StatelessWidget {
  Tag({super.key, required this.onTap, required this.text});
  bool onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: yellow[1],
        ),
        color: onTap ? yellow[0] : null,
      ),
      child: Text(
        text,
        style: buildTag(),
      ),
    );
  }
}

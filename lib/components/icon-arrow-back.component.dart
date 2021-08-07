import 'package:flutter/material.dart';
import 'package:keh/components/theme.component.dart';

class IconArrowBack extends StatelessWidget {
  const IconArrowBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        color: secondary,
        size: 30,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

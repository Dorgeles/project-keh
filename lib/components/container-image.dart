import 'package:flutter/material.dart';
import 'package:keh/components/theme.component.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: dark,
      ),
    );
  }
}

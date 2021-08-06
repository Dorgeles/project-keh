import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.component.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 80,
        width: 70,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 15,
            ),
            Icon(
              FontAwesomeIcons.userCog,
              size: 30,
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}

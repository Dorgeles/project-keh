import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.component.dart';

class EditProfilWidget extends StatelessWidget {
  const EditProfilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 80,
        width: 70,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              FontAwesomeIcons.cartPlus,
              size: 30,
              color: Colors.grey[700],
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
      ),
    );
  }
}

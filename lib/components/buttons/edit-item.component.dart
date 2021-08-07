import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keh/screens/user.screen/edit-profil.screen.dart';

import '../theme.component.dart';

class EditProfilWidget extends StatelessWidget {
  const EditProfilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfilScreen(),
            ),
          );
        },
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
      ),
    );
  }
}

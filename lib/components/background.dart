import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.red),
      child: Stack(
        children: [
          Positioned(
            top: 1,
            left: -4,
            child: Container(
              height: 300,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          )
        ],
      ),
    );
  }
}

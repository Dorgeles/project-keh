import 'package:flutter/material.dart';
import 'package:keh/components/theme.component.dart';

class BrobroSearchBar extends StatelessWidget {
  const BrobroSearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
      ),
      height: size.height / 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 17),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.7),
                topRight: Radius.circular(25.7),
                bottomLeft: Radius.circular(25.7),
                bottomRight: Radius.circular(25.7)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 0.3,
                  blurRadius: 10, // changes position of shadow
                  offset: Offset(0, 0)),
            ],
          ),
          child: TextField(
            autofocus: false,
            style: TextStyle(fontSize: 15.0, color: dark),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: "   Qu'est-ce que vous désirez",
              hintStyle: TextStyle(
                fontSize: 15.0,
              ),
              // contentPadding: const EdgeInsets.only(
              //     left: 14.0, bottom: 12.0, top: 0.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

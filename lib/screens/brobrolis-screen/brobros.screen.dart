import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keh/components/background.dart';
import 'package:keh/components/icon-arrow-back.component.dart';
import 'package:keh/components/theme.component.dart';

import 'component/brobrolis-search-bar.component.dart';
import 'component/item-widget.component.dart';

class BrobrolisScreen extends StatefulWidget {
  const BrobrolisScreen({Key? key}) : super(key: key);

  @override
  _BrobrolisScreenState createState() => _BrobrolisScreenState();
}

class _BrobrolisScreenState extends State<BrobrolisScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackGround(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: white,
            leading: IconArrowBack(),
            title: Text(
              'Les Brobrolis',
              style: TextStyle(color: secondary),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 35,
                  child: Stack(
                    children: [
                      Icon(
                        FontAwesomeIcons.cartPlus,
                        size: 30,
                        color: primary,
                      ),
                      Positioned(
                        right: 0,
                        // bottom: 0,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: white,
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: primary, fontSize: 8),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              BrobroSearchBar(size: size),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ItemWidget(
                        size: size,
                      ),
                      ItemWidget(size: size),
                      ItemWidget(size: size),
                      ItemWidget(size: size),
                      ItemWidget(size: size),
                      ItemWidget(size: size),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

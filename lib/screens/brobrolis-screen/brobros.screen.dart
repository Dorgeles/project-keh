import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keh/components/background.dart';
import 'package:keh/components/theme.component.dart';

import 'component/brobrolis-search-bar.component.dart';

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
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: secondary,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      color: white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: Container(
                              height: 120,
                              width: 140,
                              color: dark,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: size.width / 2.35,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("le nom de l'article",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: secondary)),
                                        Text(
                                          "le nom de l'article",
                                          style: TextStyle(
                                              color: primary, fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: secondary,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    "60 000 Fcfa",
                                    style: TextStyle(
                                      color: primary,
                                    ),
                                  ),
                                  Container(
                                      child: Icon(
                                    Icons.add_circle,
                                    color: primary,
                                  ))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

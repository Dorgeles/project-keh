import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keh/components/icon-arrow-back.component.dart';
import 'package:keh/components/theme.component.dart';

import 'component/cart-item.component.dart';

class CartItemScreen extends StatefulWidget {
  const CartItemScreen({Key? key}) : super(key: key);

  @override
  _CartItemScreenState createState() => _CartItemScreenState();
}

class _CartItemScreenState extends State<CartItemScreen> {
  @override
  Widget build(BuildContext context) {
    int value = 1;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconArrowBack(),
        title: Text(
          'Mon panier',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: dark,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                '3 articles',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: dark,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: size.height / 2.3,
                width: size.width - 30,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Dismissible(
                        key: Key("1"),
                        background: Container(
                          decoration: BoxDecoration(color: secondary),
                          child: Row(
                            children: [
                              Spacer(),
                              SvgPicture.asset("assets/icons/Trash.svg")
                            ],
                          ),
                        ),
                        child: CartItemDetail(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

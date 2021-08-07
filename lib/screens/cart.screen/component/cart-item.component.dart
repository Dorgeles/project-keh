import 'package:flutter/material.dart';
import 'package:keh/components/theme.component.dart';

class CartItemDetail extends StatefulWidget {
  const CartItemDetail({Key? key}) : super(key: key);

  @override
  _CartItemDetailState createState() => _CartItemDetailState();
}

class _CartItemDetailState extends State<CartItemDetail> {
  @override
  Widget build(BuildContext context) {
    int value = 1;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: size.width - 30,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 90,
                width: size.width / 4.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 80,
                width: size.width * 0.40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Le nom de l'article",
                        style: TextStyle(
                            color: dark,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    Text("le nom de la boutique le vend",
                        style: TextStyle(
                            color: secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Le prix Fcfa",
                      style: TextStyle(
                          color: dark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 90,
                width: size.width / 4.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              print("object");
                              value--;
                              if (value <= 0) {
                                value = 1;
                              }
                            });
                          },
                          child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: secondary),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: .0),
                                child: Icon(
                                  Icons.minimize,
                                  size: 25,
                                  color: white,
                                ),
                              ))),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          value.toString(),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              value++;
                            });
                          },
                          child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primary,
                              ),
                              child: Icon(
                                Icons.add,
                                size: 25,
                                color: white,
                              )))
                    ]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

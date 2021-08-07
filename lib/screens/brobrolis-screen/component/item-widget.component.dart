import 'package:flutter/material.dart';
import 'package:keh/components/theme.component.dart';
import 'package:keh/screens/brobrolis-screen/detail-item.screen.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.size,
    // required this.itemName,
    // required this.businessName,
    // required this.price,
  }) : super(key: key);
  // final String itemName;
  // final String businessName;
  // final String price;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailItem(),
            ),
          );
        },
        child: Container(
          color: white,
          height: 140,
          width: size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 130,
                  width: size.width / 2.8,
                  color: dark,
                ), // container d'image
              ),
              Container(
                height: 130,
                width: size.width - (size.width / 2.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 90,
                          width: size.width - ((size.width / 2.2) + 50),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Le titre de l'article",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: primary,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  " le nom du vendeur",
                                  style:
                                      TextStyle(fontSize: 10, color: secondary),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ), // container du titre et de la description.
                        Container(
                          height: 90,
                          width: 40,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward,
                              color: secondary,
                              size: 30,
                            ),
                          ),
                        ) // container du detail
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text("article ajouté"),
                            ));
                          },
                          child: Container(
                            height: 35,
                            width: size.width - (size.width / 2.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Le prix Fcfa",
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  size: 30,
                                  color: primary,
                                )
                              ],
                            ),
                          ),
                        ) // container du prix
                      ],
                    ),
                  ],
                ),
              ), // container des texts
            ],
          ),
        ),
      ),
    );
  }
}

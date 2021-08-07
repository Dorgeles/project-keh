import 'package:flutter/material.dart';
import 'package:keh/components/icon-arrow-back.component.dart';
import 'package:keh/components/theme.component.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          leading: IconArrowBack(),
          title: Text(
            'Le nom de la boutique',
            style: TextStyle(
              color: dark,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Le nom du produit en question",
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height / 2.8,
                    color: dark,
                    width: size.width / 2.5,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: primary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: primary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: primary,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ))
              ]),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: size.height / 6,
                width: size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: secondary),
              )
            ]))),
        bottomSheet: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Row(children: [
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            value--;
                            if (value <= 0) {
                              value = 1;
                            }
                          });
                        },
                        child: Container(
                            height: 30,
                            width: 30,
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
                        style: TextStyle(fontSize: 14),
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
                            height: 30,
                            width: 30,
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
                  GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text("article ajouté"),
                        ));
                        Navigator.pop(context);
                      },
                      child: Container(
                          width: size.width / 3,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primary),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '$value x fr',
                                  style: TextStyle(fontSize: 14, color: white),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primary.withOpacity(0.9),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )))
                ]))));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        color: Colors.white,
      ),
      //column general
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Widget Imagen
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
            child: Image.asset(
              "assets/images/noodles_ramen1.jpg",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          //Las letras depues de la imagen(Widget Container)
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //column del contenido despues de la imagen(solo letrar y cuadro)
            child: Column(
              children: [
                Column(
                  children: [
                    const Text(
                        "Wheat moodles served in a meat-based broth, flavored with say sauce and toppings(sliced park, norí, menma and scallions)",
                        style: TextStyle(
                          fontSize: 16.0,
                        )),
                    const SizedBox(
                      height: 35.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Nutrional value per plate",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            )),
                        SizedBox()
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //cuadro de nutriente y su valor
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            nutrionalValueWidget(
                                value: "380", nutrional: "kcal"),
                            nutrionalValueWidget(
                                value: "13,1", nutrional: "proteins"),
                            nutrionalValueWidget(
                                value: "20,2", nutrional: "fats"),
                            nutrionalValueWidget(
                                value: "35,6", nutrional: "carbs"),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),

          //fila:  + - add cart
          //centro del colum general
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 30.0,
                  child: const Icon(Icons.add, color: Colors.black, size: 35.0),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 30.0,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 35.0,
                  ),
                ),
                Container(
                  width: 230.0,
                  height: 65.0,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(35.0),
                          right: Radius.circular(35.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      Text("\$4,65",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container nutrionalValueWidget(
      {required String value, required String nutrional}) {
    double numberFontSize = 15.0;
    FontWeight fontW = FontWeight.bold;
    double sizeBoxHe = 7.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                value,
                style: TextStyle(fontSize: numberFontSize, fontWeight: fontW),
              ),
              SizedBox(
                height: sizeBoxHe,
              ),
              Text(nutrional),
            ],
          ),
        ],
      ),
    );
  }
}

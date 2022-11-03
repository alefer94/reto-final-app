import 'package:flutter/material.dart';

class ContentHomeView extends StatelessWidget {
  final iconosImagenes = [
    "ham.png",
    "noodles.png",
    "tacos.png",
    "burger.png",
    "pizza.png"
  ];

  final nombreImagenes = ["", "Noodles", "Tacos", "Burguer", "Pizza"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      height: 70.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconosImagenes.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(
                Icons.grading_rounded,
                color: Colors.black,
              ),
            );
          }

          //Logica para poder observar mejor los colores
          Color colorCategory = Colors.grey.shade200;
          Color colorCategoryText = Colors.black;
          Color colorCategoryIcon = Colors.black;
          ;
          if (index == 1) {
            colorCategory = Colors.black;
            colorCategoryText = Colors.white;
            colorCategoryIcon = Colors.white;
          }

          return Container(
              decoration: BoxDecoration(
                  color: colorCategory,
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(30.0),
                      right: Radius.circular(30.0))),
              width: 125,
              margin: const EdgeInsets.only(left: 7.0, top: 5.0, bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/${iconosImagenes[index]}",
                    color: colorCategoryIcon,
                    width: 25.0,
                    height: 25.0,
                  ),
                  const SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          nombreImagenes[index],
                          style: TextStyle(
                            color: colorCategoryText,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
              // margin: EdgeInsets.all(5.0),
              );
        },
      ),
    );
  }
}

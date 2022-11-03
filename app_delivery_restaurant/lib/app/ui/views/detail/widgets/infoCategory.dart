import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';
import 'listProducts.dart';

class InfoCategory extends StatelessWidget {
  const InfoCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 330.0,
          child: Image.asset(
            "assets/images/noodles_ramen.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),

        Container(
            margin: const EdgeInsets.only(top: 298),
            padding: const EdgeInsets.only(
                top: 30, left: 25.0, right: 25.0, bottom: 5.0),

            // padding: const EdgeInsets.symmetric(
            //     horizontal: 25.0, vertical: 30),
            height: 170.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors
                    .white, // poner en otro color para dar una mejor visibilidad
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                )),
            child: Hero(
              transitionOnUserGestures: true,
              tag: "tag1",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  deliberyRowContent("Noodles y Ramen", "",
                      fontSizeEntrada: 22.0,
                      fontWeightEntrada: FontWeight.bold),
                  deliberyRowContent(
                    "812 Avenue, 153673",
                    "",
                  ),
                  const SizedBox(),
                  deliberyRowContent(
                    "Delivery Time",
                    "30-45 minutes",
                  ),
                  deliberyRowContent("Delivery Cost", "\$ 5-10"),
                ],
              ),
            )
            // ),

            ),

        /// aca es donde damos inicio para que se ejecurte

        const GridProductoView(),

        Center(
          heightFactor: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            width: double.infinity,
            height: 100,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.HOME);
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  "Noodles y Ramen",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: const Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
//
      ],
    ));
  }

  Row deliberyRowContent(String letterL, String letterR,
      {double? fontSizeEntrada, FontWeight? fontWeightEntrada}) {
    fontSizeEntrada ?? (fontSizeEntrada = 16.0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          letterL,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSizeEntrada,
              fontWeight: fontWeightEntrada),
        ),
        Text(
          letterR,
          style: TextStyle(color: Colors.black, fontSize: fontSizeEntrada),
        ),
      ],
    );
  }
}

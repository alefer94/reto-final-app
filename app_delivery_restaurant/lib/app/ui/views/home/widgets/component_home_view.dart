import 'package:app_delivery_restaurant/app/ui/views/detail/detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

// ventada donde donde aparace la imagen de la categoria selecionada
class ComponentHomeView extends StatelessWidget {
  const ComponentHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 23.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: const Text(
                  "Fastest delivery time",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox()
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),

          GestureDetector(
            child: SizedBox(
              width: double.infinity,
              height: 190,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(28)),
                child: Image.asset(
                  "assets/images/noodles_ramen.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              Get.toNamed(AppRoutes.DETALLE);
            },
          ), //vista al momento de dar click en la imagen podemos observar la informacion del la categoria elegida
          //y unos pocos porducto
          //   const InfoCategorySelect(),

          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: const Text(
                  "Noodles & Ramen",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox()
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: const Text(
                  "812 Avenue, 153673",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}

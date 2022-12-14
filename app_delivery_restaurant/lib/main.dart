import 'package:app_delivery_restaurant/app/routes/app_routes.dart';
import 'package:app_delivery_restaurant/app/routes/app_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //incialisamos la la primera venta
      initialRoute: AppRoutes.HOME,

      //las otras vistas para que se puede hacer el cambio de vistas

      getPages: AppViews.views,
    );
  }
}

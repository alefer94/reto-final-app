import 'package:app_delivery_restaurant/app/ui/views/home/home_controller.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/widgets/component_home_view.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/widgets/content_home_view.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/widgets/header_home_view.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Column(
                  children: [
                    const HeaderHomeView(),
                    ContentHomeView(),
                    const ComponentHomeView(),
                  ],
                ),
              ),
              bottomNavigationBar: const Navigation(),
            ));
  }
}

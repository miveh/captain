import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Consts/colors.dart';

import '../../Controllers/Home/home_controller.dart';
import 'Widgets/build_main_grid_view_widget.dart';
import 'Widgets/header_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBgColor,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            color: mainBgColor,
          ),
          child: Column(
            children: [
              MainHeaderWidget(
                controller: controller,
              ),
              // SizedBox(),
              BuildMainGridViewWidget(
                controller: controller,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 0.0, vertical: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Developed by',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'AliRn.ir',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

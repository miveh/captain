import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mafia_role/Consts/colors.dart';

import '../../Controllers/Home/home_controller.dart';
import 'Widgets/build_main_grid_view_widget.dart';

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
              _buildHeader(),
              // SizedBox(),
              BuildMainGridViewWidget(
                controller: controller,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 7.0, vertical: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Developed by',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'AliRn.ir',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
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

  Widget _buildHeader() {
    return Container(
        width: Get.width,
        height: Get.height * .2,
        color: mainBgColor,
        child: Row(
          children: [
            Hero(
              tag: 'CaptainAnimation',
              child: SizedBox(
                height: Get.height * .3,
                width: Get.width / 2,
                child: Lottie.asset(
                  'assets/anims/mafiaLogo.json',
                ),
              ),
            ),
            SizedBox(
              height: Get.height * .4,
              width: Get.width / 2,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'MohammadReza',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Soltani',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hossein',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Khosravi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

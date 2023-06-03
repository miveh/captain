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
      body: Container(
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
          ],
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
              height: Get.height * .4,
              width: Get.width/2,
              child: Lottie.asset(
                'assets/anims/mafiaLogo.json',
              ),
            ),
          ),
          SizedBox(
            height: Get.height * .4,
            width: Get.width/2,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('MohammadReza Soltani'),
                Text('Designed By: Hossein Khosravi'),
                Text('Developed By: AliRn.ir'),
              ],
            ),
          ),
        ],
      )
    );
  }
}

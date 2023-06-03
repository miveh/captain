import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

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
          color: Colors.red.shade900,
        ),
        child: Column(
          children: [
            _buildHeader(),
            SizedBox(
              height: Get.height * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/anims/coin.json',
                  height: Get.width * .1,
                  width: Get.width * .1,
                ),
                const Text(
                  '0  : امتیاز شما ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'koodak',
                  ),
                ),
              ],
            ),
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
      height: Get.height * .25,
      color: Colors.white,
    );
  }
}

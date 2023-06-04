import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../Consts/colors.dart';
import '../../../Controllers/Home/home_controller.dart';

class MainHeaderWidget extends StatelessWidget {
  const MainHeaderWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .15,
      color: mainBgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'CaptainMafia',
                child: Column(
                  children: [
                    SizedBox(height: Get.height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Captain',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * .02,
                        ),
                        const Text(
                          'MAFIA',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Creators:',
                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildName(firstName: 'MohammadReza', lastName: 'Soltani'),
                      const SizedBox(width: 10.0),
                      _buildName(firstName: 'Hossein', lastName: 'Khosravi'),
                    ],
                  ),
                  const SizedBox(height: 1.0),
                ],
              ),
            ],
          ),
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
        ],
      ),
    );
  }

  Widget _buildName({required String firstName, required String lastName}) {
    return Row(
      children: [
        Text(
          firstName,
          style: const TextStyle(
            fontSize: 8.0,
          ),
        )
        ,
        const SizedBox(
          width: 2.0,
        ),
        Text(
          lastName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8.0,
          ),
        )
      ],
    );
  }
}

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Consts/measures.dart';
import 'package:mafia_role/Models/Roles/roles_model.dart';

import '../../../Consts/colors.dart';

class ShowRoleContentAlert extends StatelessWidget {
  const ShowRoleContentAlert({Key? key, required this.role}) : super(key: key);

  final RolesModel role;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .8,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 4.0,
          color: role.role != 0 ? secondColorLight : Colors.redAccent.shade200,
        ),
        borderRadius: radiusAll16,
      ),
      padding: paddingAll18,
      child: Column(
        children: [
          AutoSizeText(
            role.title,
            maxLines: 1,
            maxFontSize: 40.0,
            minFontSize: 32.0,
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: 'koodak',
              shadows: shadow(),
            ),
          ),
          File("assets/images/${role.title}.jpg").existsSync()
              // This is the real one, remove the second one
              ? SizedBox(
                  width: Get.width * 0.6,
                  height: Get.width * 0.6,
                  child: Image.asset("assets/images/${role.title}.jpg"),
                )
              : SizedBox(
                  width: Get.width * 0.6,
                  height: Get.width * 0.6,
                  child: Image.asset("assets/images/${role.title}.jpg"),
                ),
          SizedBox(
            height: Get.height * .03,
          ),
          Text(
            role.description,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 14.0,
              fontFamily: 'koodak',
            ),
          ),
          SizedBox(
            height: Get.height * .03,
          ),
          Expanded(
            child: SizedBox(
              height: double.maxFinite,
              width: Get.width,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: role.options.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Divider(
                        height: 10.0,
                        thickness: 1.0,
                      ),
                      Text(
                        role.options[index],
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'koodak',
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

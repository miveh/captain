import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Consts/measures.dart';
import 'package:mafia_role/Models/Roles/roles_model.dart';

class ShowRoleContentAlert extends StatelessWidget {
  const ShowRoleContentAlert({Key? key, required this.role}) : super(key: key);

  final RolesModel role;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: radiusAll16,
      ),
      padding: paddingAll18,
      child: Column(
        children: [
          AutoSizeText(
            role.title,
            maxLines: 1,
            maxFontSize: 54.0,
            minFontSize: 40.0,
            style: TextStyle(
              fontSize: 48.0,
              fontFamily: 'koodak',
              shadows: shadow(),
            ),
          ),
          SizedBox(
            height: Get.height * .05,
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
            height: Get.height * .05,
          ),
          Expanded(
            child: SizedBox(
              height: double.maxFinite,
              width: Get.width,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: role.options.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    role.options[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'koodak',
                    ),
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Utils/view_utils.dart';

import '../../Consts/measures.dart';
import '../../Controllers/ShowRoles/show_roles_controller.dart';
import '../../Models/Roles/roles_model.dart';

class ShowRolesScreen extends StatelessWidget {
  ShowRolesScreen({Key? key}) : super(key: key);

  final ShowRolesController controller = Get.put(ShowRolesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.red.shade900,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'نمایش نقش ها',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'koodak',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.check,
                        color: Colors.red.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: paddingAll12,
                  height: double.maxFinite,
                  width: Get.width,
                  child: Wrap(
                    spacing: 8.0, // gap between adjacent chips
                    runSpacing: 4.0, // gap between lines
                    children: <Widget>[..._generateTags()],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _generateTags() {
    return controller.selectedRolesList
        .where((element) => element.role == 1)
        .map((tag) => _getChip(role: tag))
        .toList();
  }

  _getChip({required RolesModel role}) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        duration: const Duration(milliseconds: 400),
        child: FlipAnimation(
          duration: const Duration(milliseconds: 400),
          child: Obx(
            () => GestureDetector(
              onTap: () {
                controller.showRole(role: role);
              },
              child: Chip(
                backgroundColor: Colors.red.shade900,
                avatar: (role.isShow.isTrue)
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white24,
                      )
                    : const Icon(
                        Icons.not_interested,
                        color: Colors.white,
                      ),
                label: AutoSizeText(
                  persianNumber(number: (role.id + 1).toString()),
                  maxFontSize: 20.0,
                  minFontSize: 12.0,
                  maxLines: 1,
                  style: TextStyle(
                    color: (role.isShow.isTrue)?Colors.white24:Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'koodak',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

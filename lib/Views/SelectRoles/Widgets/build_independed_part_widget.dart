import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Controllers/SelectRoles/select_roles_controller.dart';

import '../../../Consts/fakeData.dart';
import '../../../Consts/measures.dart';
import '../../../Models/Roles/roles_model.dart';

class BuildIndependentPartWidget extends StatelessWidget {
  const BuildIndependentPartWidget({Key? key, required this.controller})
      : super(key: key);

  final SelectRolesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: paddingAll12,
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[..._generateTags()],
      ),
    );
  }

  _generateTags() {
    return rolesList
        .where((element) => element.role == 2)
        .map((tag) => _getChip(role: tag))
        .toList();
  }

  _getChip({required RolesModel role}) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        duration: const Duration(milliseconds: 200),
        child: FadeInAnimation(
          child: Obx(
            () => GestureDetector(
              onTap: () {
                controller.checkRole(role: role);
              },
              child: Chip(
                backgroundColor: Colors.red.shade900,
                avatar: Checkbox(
                  onChanged: (bool? value) {
                    controller.checkRole(role: role);
                  },
                  value: role.isSelected.value,
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                ),
                label: AutoSizeText(
                  role.title,
                  maxFontSize: 20.0,
                  minFontSize: 12.0,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/Roles/roles_model.dart';
import '../../Views/ShowRoles/Widgets/show_role_content_alert.dart';

class ShowRolesController extends GetxController {
  List<RolesModel> selectedRolesList = [];

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    selectedRolesList = Get.arguments['rolesList'];
  }

  void showRole({
    required RolesModel role,
  }) async {
    if(role.isShow.isFalse){
      showDialog(
        context: Get.context!,
        builder: (BuildContext context) => AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: ShowRoleContentAlert(
            role: role,
          ),
        ),
      ).then((value){
        role.isShow(true);
      });
    }
  }

  void refreshRoles(){
    for (RolesModel role in selectedRolesList){
      role.isShow(false);
    }
  }
}

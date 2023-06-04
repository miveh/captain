import 'package:get/get.dart';
import 'package:mafia_role/Consts/rolesData.dart';
import 'package:mafia_role/Models/Roles/roles_model.dart';
import 'package:mafia_role/Utils/rout_utils.dart';

class SelectRolesController extends GetxController {
  RxInt playerCount = 0.obs;
  int player = 0;
  int goodRoles = 0;
  int badRoles = 0;

  List<RolesModel> selectedRolesList = [];

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() async {
    playerCount.value = Get.arguments['playerCount'];
    player = playerCount.value;

    badRoles = player ~/ 3;
    goodRoles = player - badRoles;

    for (var o in rolesList) {
      o.isSelected(false);
    }
  }

  void checkRole({
    required RolesModel role,
  }) {
    // Unselected
    if (role.isSelected.isTrue) {
      role.isSelected(false);
      playerCount.value++;
      selectedRolesList.remove(role);

      // Undo it
      if (role.role == 1) {
        goodRoles++;
      } else {
        badRoles++;
      }
      return;
    }

    // Selected
    if (playerCount.value == 0) return;

    // If it was citizen
    if (role.role == 1) {
      if (goodRoles > 0) {
        role.isSelected(true);
        goodRoles--;
        playerCount.value--;
        selectedRolesList.add(role);
      }
    }
    // It was mafia
    else {
      if (badRoles > 0) {
        role.isSelected(true);
        badRoles--;
        playerCount.value--;
        selectedRolesList.add(role);
      }
    }
  }

  void goToShowRolesPage() {
    Get.toNamed(NameRouts.showRoles, arguments: {
      'rolesList': selectedRolesList,
    });
  }
}

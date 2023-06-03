import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mafia_role/Consts/fakeData.dart';
import 'package:mafia_role/Models/Roles/roles_model.dart';
import 'package:mafia_role/Utils/rout_utils.dart';

class SelectRolesController extends GetxController {
  RxInt playerCount = 0.obs;
  int player = 0;
  int citizenPlayer = 0;

  List<RolesModel> selectedRolesList = [];

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() async {
    playerCount.value = Get.arguments['playerCount'];
    player = playerCount.value;
    citizenPlayer = player - (player / 100 * 30).toInt();
    for (var o in rolesList) {
      o.isSelected(false);
    }
  }

  void checkRole({
    required RolesModel role,
  }) {
    int mafiaPlayer =
        selectedRolesList.where((element) => element.role == 0).toList().length;
    if (role.isSelected.isTrue) {
      role.isSelected(false);
      playerCount.value++;
      selectedRolesList.remove(role);
    } else {
      if (playerCount.value > 0) {
        if (role.role == 0) {
          if (mafiaPlayer <= (player / 100 * 30).toInt()) {
            role.isSelected(true);
            playerCount.value--;
            selectedRolesList.add(role);
          }
        } else {
          if (citizenPlayer != 0) {
            citizenPlayer--;
            role.isSelected(true);
            playerCount.value--;
            selectedRolesList.add(role);
          }
        }
      }
    }
  }

  void goToShowRolesPage() {
    Get.toNamed(NameRouts.showRoles, arguments: {
      'rolesList': selectedRolesList,
    });
  }
}

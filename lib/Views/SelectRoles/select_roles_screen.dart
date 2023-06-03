import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Consts/measures.dart';
import 'package:mafia_role/Utils/view_utils.dart';
import 'package:mafia_role/Views/SelectRoles/Widgets/build_citizen_part_widget.dart';
import '../../Controllers/SelectRoles/select_roles_controller.dart';
import 'Widgets/build_independed_part_widget.dart';
import 'Widgets/build_mafia_part_widget.dart';

class SelectRolesScreen extends StatelessWidget {
  SelectRolesScreen({Key? key}) : super(key: key);

  final SelectRolesController controller = Get.put(SelectRolesController());

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
                      'انتخاب نقش ها',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'koodak',
                      ),
                    ),
                    Obx(
                      () => (controller.playerCount.value == 0)
                          ? InkWell(
                              onTap: () {
                                controller.goToShowRolesPage();
                              },
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              persianNumber(
                                number: controller.playerCount.value.toString(),
                              ),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'koodak',
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: double.maxFinite,
                  width: Get.width,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        _buildSeparator(
                          title: 'نقش های شهروند',
                        ),
                        BuildCitizenPartWidget(
                          controller: controller,
                        ),
                        _buildSeparator(
                          title: 'نقش های مافیا',
                        ),
                        BuildMafiaPartWidget(
                          controller: controller,
                        ),
                        _buildSeparator(
                          title: 'نقش های مستقل',
                        ),
                        BuildIndependentPartWidget(
                          controller: controller,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSeparator({
    required String title,
  }) {
    return Container(
      width: Get.width,
      height: Get.height * .05,
      margin: paddingSymmetricV20,
      decoration: BoxDecoration(
        color: const Color(0XFF850000),
        boxShadow: shadow(offset: const Offset(0.0, 2.0)),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'koodak',
            color: Colors.white.withOpacity(.85),
          ),
        ),
      ),
    );
  }
}

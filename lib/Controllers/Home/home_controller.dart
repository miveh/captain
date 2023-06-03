import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Models/Category/category_model.dart';
import 'package:mafia_role/Utils/rout_utils.dart';

import '../../Views/Home/Widgets/player_count_widget_dialog.dart';

class HomeController extends GetxController {


  RxDouble playerCount = 7.0.obs;



  List<CategoryModel> categoryList = [
    CategoryModel(
      id: 0,
      title: 'طهران مافیا',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 1,
      title: 'بازی من',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 2,
      title: 'مافیا تلویزیون',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 3,
      title: 'مافیا فیلیمو',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 4,
      title: 'نقش های کاربران',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 5,
      title: 'جاسوس',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 6,
      title: 'آموزش',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 7,
      title: 'به زودی ...',
      isSelected: false.obs,
    ),
  ];



  void tapGame({
    required int id,
  }) {
    switch (id) {
      case 1:
        {
          showPlayerCountDialog();
          break;
        }
    }
  }

  void showPlayerCountDialog() async {
    playerCount(7.0);
    var goNext = await showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: PlayerCountWidgetDialog(
            controller: this,
          ),
        );
      },
    );


    if(goNext is bool && goNext){
      Get.toNamed(NameRouts.selectRoles , arguments: {
        'playerCount':playerCount.value.toInt(),
      });
    }


  }

  void changePosition({
    required double newPosition,
  }) {
    if(newPosition >= 7 ){
      playerCount(newPosition);
    }
  }
}

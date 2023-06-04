import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_role/Models/Category/category_model.dart';
import 'package:mafia_role/Utils/rout_utils.dart';

import '../../Views/Home/Widgets/player_count_widget_dialog.dart';

class HomeController extends GetxController {


  RxDouble playerCount = 4.0.obs;



  List<CategoryModel> categoryList = [
    CategoryModel(
      id: 0,
      title: 'شروع بازی',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 1,
      title: 'مافیا تلویزیون  (به زودی)',
      isSelected: false.obs,
    ),
    CategoryModel(
      id: 2,
      title: 'مافیا فیلیمو  (به زودی)',
      isSelected: false.obs,
    ),
  ];



  void tapGame({
    required int id,
  }) {
    switch (id) {
      case 0:
        {
          showPlayerCountDialog(6.0);
          break;
        }
      case 1:
        {
          showPlayerCountDialog(7.0);
          break;
        }
      case 2:
        {
          showPlayerCountDialog(8.0);
          break;
        }
    }
  }

  void showPlayerCountDialog(double count) async {
    playerCount(count);
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
    if(newPosition >= 4 ){
      playerCount(newPosition);
    }
  }
}

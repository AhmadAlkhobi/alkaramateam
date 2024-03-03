import 'package:bot_toast/bot_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/core/services/connectivity_service.dart';
import 'package:sp1_e_commerce/core/services/location_service.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_controller.dart';

TableRow buildRow(List<String> cells, {bool isSlelcted = false}) => TableRow(
        children: cells.map((cell) {
      final style = TextStyle(
          fontWeight: isSlelcted ? FontWeight.bold : FontWeight.normal,
          fontSize: screenWidth(28));

      return Padding(
        padding: EdgeInsetsDirectional.all(screenWidth(100)),
        child: Center(
            child: Text(
          cell,
          style: style,
        )),
      );
    }).toList());

void customLoader() => BotToast.showCustomLoading(toastBuilder: (context) {
      return Container(
        decoration: BoxDecoration(
            color: AppColors.blackColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        width: screenWidth(4),
        height: screenWidth(4),
        child: SpinKitCircle(
          color: AppColors.orangeColor,
          size: screenWidth(8),
        ),
      );
    });

Future<XFile?> chooseImage(ImageSource imageSource) async {
  return await ImagePicker().pickImage(source: imageSource);
}

double screenWidth(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.width / percent;
  else
    return Get.size.height / percent;
}

double screenHeight(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.height / percent;
  else
    return Get.size.width / percent;
}

SharedPrefrenceRepository get storege => Get.find<SharedPrefrenceRepository>();

ConnectivityService get connectivityService => Get.find<ConnectivityService>();
Connectivity get connectivity => Get.find<Connectivity>();

LocationService get locationService => Get.find<LocationService>();
HomeController get homeController => Get.find<HomeController>();
bool isOnline = false;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/example/example_controller.dart';

class Exapmle extends StatefulWidget {
  Exapmle({
    super.key,
  });

  @override
  State<Exapmle> createState() => _ExapmleState();
}

class _ExapmleState extends State<Exapmle> {
  ExamleController controller = Get.put(ExamleController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: screenWidth(15),
                end: screenWidth(15),
                top: screenWidth(30)),
            child: Obx(() {
              return controller.allNewsList.length == 0
                  ? SpinKitCircle(
                      color: AppColors.blackColor,
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.allNewsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            child: Column(
                          children: [
                            Image.network(
                              controller.allNewsList[index].image ?? '',
                              width: screenWidth(6),
                              height: screenWidth(6),
                              // fit: BoxFit.cover,
                            ),
                            Text(
                              controller.allNewsList[index].title.toString(),
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: screenWidth(20),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              controller.allNewsList[index].content.toString(),
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: screenWidth(20),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              controller.allNewsList[index].type.toString(),
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: screenWidth(20),
                                  fontWeight: FontWeight.bold),
                            ),
                            // Text(
                            //   controller.allPlayerList[index].firstClub ?? '',
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].high.toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].sportId
                            //       .toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].from.toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].number.toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].play.toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allPlayerList[index].sportId
                            //       .toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allClubList[index].addressOfClub
                            //       .toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allClubList[index].sportName
                            //       .toString(),
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allClubList[index].uuid ?? '',
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   controller.allMatchList[index].channel ?? '',
                            //   style: TextStyle(
                            //       color: AppColors.blackColor,
                            //       fontSize: screenWidth(20),
                            //       fontWeight: FontWeight.bold),
                            // ),
                          ],
                        ));
                      },
                    );
            }),
          ),
          // Obx(() {
          //   return Column(
          //     children: [
          //       Image.network(
          //         controller.bossList[controller.index.value].image ?? '',
          //         width: screenWidth(6),
          //         height: screenWidth(6),
          //         // fit: BoxFit.cover,
          //       ),
          //       Text(
          //         controller.bossList[controller.index.value].name ?? '',
          //         style: TextStyle(
          //             color: AppColors.blackColor,
          //             fontSize: screenWidth(20),
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   );
          // })
        ],
      )),
    );
  }
}

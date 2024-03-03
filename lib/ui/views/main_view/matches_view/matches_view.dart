import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_match_continar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/match_details/match_details_view.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 5));
        // setState(() {});
      },
      backgroundColor: AppColors.whiteColor,
      color: AppColors.blueColor,
      child: Scaffold(
          appBar: CustomAppBar(title: 'المباريات'),
          body: ListView(
            children: [
              CustomMatchCont(
                nextmatch: true,
                club1: homeController
                        .allMatchList[homeController.index.value].club1Name ??
                    "",
                club2: homeController
                        .allMatchList[homeController.index.value].club2Name ??
                    "",
                date: homeController
                        .allMatchList[homeController.index.value].whenDate ??
                    "",
                day: homeController
                        .allMatchList[homeController.index.value].whenDay ??
                    "",
                image1: homeController
                        .allMatchList[homeController.index.value].logoclub1 ??
                    "",
                image2: homeController
                        .allMatchList[homeController.index.value].logoclub2 ??
                    "",
                playGround: homeController
                        .allMatchList[homeController.index.value].playGround ??
                    "",
                time: homeController
                        .allMatchList[homeController.index.value].whenTime ??
                    "",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth(2.7),
                    height: screenWidth(300),
                    color: AppColors.blackColor,
                  ),
                  Spacer(),
                  CustomText(text: 'المباريات القادمة'),
                  Spacer(),
                  Container(
                    width: screenWidth(2.7),
                    height: screenWidth(300),
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              Obx(() {
                return homeController.allMatchList.length == 0
                    ? SpinKitCircle(
                        color: AppColors.blackColor,
                      )
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: homeController.allMatchList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                Get.to(MatchDetailsView(
                                  matchInfo: homeController.allMatchList[index],
                                ));
                              },
                              child: CustomMatchCont(
                                nextmatch: false,
                                club1: homeController
                                        .allMatchList[index].club1Name ??
                                    "",
                                club2: homeController
                                        .allMatchList[index].club2Name ??
                                    "",
                                date: homeController
                                        .allMatchList[index].whenDate ??
                                    "",
                                day: homeController
                                        .allMatchList[index].whenDay ??
                                    "",
                                image1: homeController
                                        .allMatchList[index].logoclub1 ??
                                    "",
                                image2: homeController
                                        .allMatchList[index].logoclub2 ??
                                    "",
                                playGround: homeController
                                        .allMatchList[index].playGround ??
                                    "",
                                time: homeController
                                        .allMatchList[index].whenTime ??
                                    "",
                              ));
                        },
                      );
              })
            ],
          )),
    );
  }
}

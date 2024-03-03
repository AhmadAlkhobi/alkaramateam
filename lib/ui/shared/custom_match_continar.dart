import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/match_details/match_details_view.dart';

class CustomMatchCont extends StatelessWidget {
  final bool nextmatch;
  final String image1;
  final String image2;
  final String club1;
  final String club2;
  final String date;
  final String time;
  final String day;
  final String playGround;

  CustomMatchCont({
    super.key,
    required this.nextmatch,
    required this.image1,
    required this.image2,
    required this.club1,
    required this.club2,
    required this.date,
    required this.time,
    required this.day,
    required this.playGround,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
              vertical: screenWidth(35), horizontal: screenWidth(50)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: screenWidth(1),
                height: screenWidth(3),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: screenWidth(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                image1,
                                height: screenWidth(8),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: screenWidth(30),
                                  ),
                                  child: nextmatch
                                      ? CustomText(
                                          text: '0',
                                          styleType: TextStyleType.TITLE,
                                        )
                                      : SizedBox())
                            ],
                          ),
                          CustomText(
                            text: club1,
                            styleType: TextStyleType.SUBTITLE,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(30),
                          end: screenWidth(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: playGround),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: '${day}${date}',
                                  styleType: TextStyleType.BODY,
                                ),
                                CustomText(
                                  text: time,
                                  styleType: TextStyleType.BODY,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsetsDirectional.only(),
                                  child: nextmatch
                                      ? CustomText(
                                          text: '0',
                                          styleType: TextStyleType.SUBTITLE,
                                        )
                                      : SizedBox()),
                              Image.network(
                                image2,
                                height: screenWidth(8),
                              ),
                            ],
                          ),
                          CustomText(
                            text: club2,
                            styleType: TextStyleType.SUBTITLE,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (nextmatch)
          Container(
            padding: EdgeInsets.symmetric(vertical: screenWidth(40)),
            width: screenHeight(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.barColor),
            child: Center(
              child: InkWell(
                onTap: () => Get.to(MatchDetailsView(
                  matchInfo:
                      homeController.allMatchList[homeController.index.value],
                )),
                child: CustomText(
                    text: 'تفاصيل المبارة',
                    styleType: TextStyleType.TITLE,
                    textColor: AppColors.orangeColor),
              ),
            ),
          ),
      ],
    );
  }
}

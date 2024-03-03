import 'package:flutter/cupertino.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class NextMatchContinar extends StatelessWidget {
  final String image1;
  final String image2;
  final String club1;
  final String club2;
  final String playGround;
  final String date;
  final String time;
  final String day;
  final String channel;

  const NextMatchContinar(
      {super.key,
      required this.image1,
      required this.image2,
      required this.club1,
      required this.club2,
      required this.playGround,
      required this.date,
      required this.time,
      required this.day,
      required this.channel});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(
          start: screenWidth(45),
          end: screenWidth(45),
          top: screenWidth(10),
        ),
        child: Container(
            height: screenWidth(1.5),
            width: screenWidth(1),
            decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/pngs/out (83) 7.png',
                  height: screenHeight(3),
                  width: screenWidth(2.5),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                        text: 'المباريات القادمة',
                        styleType: TextStyleType.SUBTITLE,
                        textColor: AppColors.whiteColor),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.network(
                              image1,
                              height: screenWidth(10),
                              // fit: BoxFit.cover,
                            ),
                            CustomText(
                                text: club1,
                                styleType: TextStyleType.BODY,
                                textColor: AppColors.whiteColor),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: screenWidth(30), start: screenWidth(30)),
                          child: CustomText(
                              text: 'VS',
                              styleType: TextStyleType.BODY,
                              textColor: AppColors.whiteColor),
                        ),
                        Column(
                          children: [
                            Image.network(
                              image2,
                              height: screenWidth(10),
                              // fit: BoxFit.cover,
                            ),
                            CustomText(
                                text: club2,
                                styleType: TextStyleType.BODY,
                                textColor: AppColors.whiteColor),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          top: screenWidth(25), start: screenWidth(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/pngs/icons8-date-50 (1) 1.png',
                                height: screenWidth(18),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: screenWidth(35)),
                                child: CustomText(
                                    text: '${day} ${date}',
                                    styleType: TextStyleType.BODY,
                                    textColor: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: screenWidth(50), bottom: screenWidth(50)),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/pngs/Group.png',
                                  height: screenWidth(18),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: screenWidth(35)),
                                  child: CustomText(
                                      text: time,
                                      styleType: TextStyleType.BODY,
                                      textColor: AppColors.whiteColor),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/pngs/icons8-stadium-50 1.png',
                                height: screenWidth(18),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: screenWidth(35)),
                                child: CustomText(
                                    text: playGround,
                                    styleType: TextStyleType.BODY,
                                    textColor: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: screenWidth(50), bottom: screenWidth(50)),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/pngs/icons8-retro-tv-50 (1) 1.png',
                                  height: screenWidth(18),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: screenWidth(35)),
                                  child: CustomText(
                                      text: channel,
                                      styleType: TextStyleType.BODY,
                                      textColor: AppColors.whiteColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

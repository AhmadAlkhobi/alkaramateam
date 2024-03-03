import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_mang.dart';
import 'package:sp1_e_commerce/ui/shared/custom_player.dart';
import 'package:sp1_e_commerce/ui/shared/custom_title_underline.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/about_players_view/about_player_controller.dart';

class AboutPlayersView extends StatefulWidget {
  const AboutPlayersView({super.key});

  @override
  State<AboutPlayersView> createState() => _AboutPlayersViewState();
}

class _AboutPlayersViewState extends State<AboutPlayersView> {
  AboutPlayerController controller = Get.put(AboutPlayerController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'كادر الاارة و اللاعبين', showBool: true),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
            start: screenWidth(15),
            end: screenWidth(15),
            top: screenWidth(3.6),
          ),
          child: ListView(
            clipBehavior: Clip.none,
            children: [
              Obx(() {
                return controller.bossList.length == 0
                    ? SpinKitCircle(
                        color: AppColors.blackColor,
                      )
                    : Padding(
                        padding:
                            EdgeInsetsDirectional.only(bottom: screenWidth(15)),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                child: Image.asset(
                                    'assets/images/pngs/Rectangle 100.png')),
                            Positioned(
                              bottom: screenWidth(200),
                              left: screenWidth(1.9),
                              child: Image.network(
                                  controller.bossList[controller.index.value]
                                          .image ??
                                      '',
                                  height: screenWidth(2.5),
                                  width: screenWidth(3)),
                            ),
                            Positioned(
                              right: screenWidth(2.5),
                              child: Column(children: [
                                CustomText(
                                    text: 'رئيس نادي الكرامة :',
                                    styleType: TextStyleType.TITLE,
                                    textColor: AppColors.whiteColor),
                                CustomText(
                                    text: controller
                                            .bossList[controller.index.value]
                                            .name ??
                                        '',
                                    styleType: TextStyleType.TITLE,
                                    textColor: AppColors.whiteColor),
                              ]),
                            ),
                          ],
                        ),
                      );
              }),
              CustomTitleUNderLine(
                textSize: screenWidth(20),
                text: 'ملابس فريق نادي الكرامة لعام 2023-2024',
                width: screenWidth(10),
                width1: screenWidth(15),
                width2: screenWidth(1.82),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(15),
                  bottom: screenWidth(15),
                ),
                child: Container(
                  height: size.height / 4,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('assets/images/pngs/out (91) 1.png'),
                ),
              ),
              CustomTitleUNderLine(
                text: 'الاداريين',
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(15),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.5),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomMang(
                            textname: 'خالد المشرف',
                            textcarer: 'المدير الفني',
                            imge: 'assets/images/pngs/out (112) 1.png'),
                      );
                    },
                  ),
                ),
              ),
              CustomTitleUNderLine(
                text: "مدربو الفريق",
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.4),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomMang(
                            textname: 'طارق جبان',
                            textcarer: 'المدير الفني',
                            imge: 'assets/images/pngs/out (90) 3.png'),
                      );
                    },
                  ),
                ),
              ),
              CustomTitleUNderLine(
                text: 'حراس المرمى',
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.3),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomPlayer(
                            agetext: '23عام',
                            longtext: '182CM',
                            numtext: 'الرقم34',
                            postext: 'المركزGK',
                            textname: 'شرف قمشري',
                            color: AppColors.yellowColor,
                            imge: 'assets/images/pngs/out (117) 1.png'),
                      );
                    },
                  ),
                ),
              ),
              CustomTitleUNderLine(
                text: 'المدافعون',
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(15),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.3),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomPlayer(
                            agetext: '37عام',
                            longtext: '181CM',
                            numtext: 'الرقم19',
                            postext: 'المركزCB',
                            textname: 'أنس بلحوس',
                            color: AppColors.blueColor,
                            imge: 'assets/images/pngs/out (119) 1.png'),
                      );
                    },
                  ),
                ),
              ),
              CustomTitleUNderLine(
                text: 'خط الوسط',
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(15),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.3),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomPlayer(
                            agetext: '35عام',
                            longtext: '182CM',
                            numtext: 'الرقم4',
                            postext: 'المركزDM',
                            textname: 'تامر حاج محمد',
                            color: AppColors.blueColor,
                            imge: 'assets/images/pngs/out (83) 7.png'),
                      );
                    },
                  ),
                ),
              ),
              CustomTitleUNderLine(
                text: 'المهاجمون',
                width: screenWidth(10),
                width1: screenWidth(20),
                width2: screenWidth(15),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.3),
                  bottom: screenWidth(10),
                ),
                child: SizedBox(
                  width: screenWidth(3),
                  height: screenWidth(3),
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15),
                          end: screenWidth(15),
                        ),
                        child: CustomPlayer(
                            agetext: '23عام',
                            longtext: '183CM',
                            numtext: 'الرقم17',
                            postext: 'المركزRW',
                            textname: 'مازن عمارة',
                            color: AppColors.blueColor,
                            imge: 'assets/images/pngs/out (124) 1.png'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

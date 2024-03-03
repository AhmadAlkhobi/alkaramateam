import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_news_continar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_title_underline.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/deatils_news/deatils_news.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/continar_next_match.dart';
import 'package:sp1_e_commerce/ui/views/news_view.dart/new_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'نادي الكرامة الرياضي', showBool: true),
          body: ListView(
            children: [
              Obx(() {
                return homeController.allMatchList.length == 0
                    ? SpinKitCircle(
                        color: AppColors.blackColor,
                      )
                    : Column(
                        children: [
                          SizedBox(
                            width: screenWidth(1),
                            height: screenHeight(2),
                            child: PageView.builder(
                              itemCount: homeController.allMatchList.length,
                              onPageChanged: (value) {
                                homeController.page.value = value;
                              },
                              itemBuilder: (context, index) {
                                return NextMatchContinar(
                                  channel: homeController
                                          .allMatchList[index].channel ??
                                      '',
                                  club1: homeController
                                          .allMatchList[index].club1Name ??
                                      '',
                                  club2: homeController
                                          .allMatchList[index].club2Name ??
                                      '',
                                  date: homeController
                                          .allMatchList[index].whenDate ??
                                      '',
                                  day: homeController
                                          .allMatchList[index].whenDay ??
                                      '',
                                  image1: homeController
                                          .allMatchList[index].logoclub1 ??
                                      '',
                                  image2: homeController
                                          .allMatchList[index].logoclub2 ??
                                      '',
                                  playGround: homeController
                                          .allMatchList[index].playGround ??
                                      '',
                                  time: homeController
                                          .allMatchList[index].whenTime ??
                                      '',
                                );
                              },
                            ),
                          ),
                          DotsIndicator(
                            position: homeController.page.value,
                            dotsCount: homeController.allMatchList.length,
                            decorator: DotsDecorator(
                                activeColor: AppColors.orangeColor,
                                color: AppColors.blueColor),
                          ),
                        ],
                      );
              }),
              Padding(
                padding: EdgeInsetsDirectional.only(end: screenWidth(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: screenWidth(15)),
                      child: CustomTitleUNderLine(
                        text: 'أخر الاخبار',
                        width: screenWidth(10),
                        width1: screenWidth(20),
                        width2: screenWidth(15),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return NewsView();
                            },
                          ));
                        },
                        child: CustomText(text: 'مشاهدة الكل')),
                  ],
                ),
              ),
              Obx(() {
                return homeController.allNewsList.length == 0
                    ? SpinKitCircle(
                        color: AppColors.blackColor,
                      )
                    : Padding(
                        padding:
                            EdgeInsetsDirectional.only(bottom: screenWidth(50)),
                        child: SizedBox(
                          width: screenWidth(1),
                          height: screenHeight(4),
                          child: ListView.builder(
                            padding: EdgeInsetsDirectional.only(
                                start: screenWidth(30), end: screenWidth(20)),
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsetsDirectional.only(
                                  end: screenWidth(20),
                                  top: screenWidth(15),
                                ),
                                child: InkWell(
                                    onTap: () => Get.to(DeatilsNews(
                                          modelMatch: homeController
                                              .allMatchList[index],
                                          infoModel:
                                              homeController.allNewsList[index],
                                        )),
                                    child: CustomNewsContinar(
                                      img: homeController
                                              .allNewsList[index].image ??
                                          '',
                                      title: homeController
                                              .allNewsList[index].title ??
                                          '',
                                    )),
                              );
                            },
                          ),
                        ),
                      );
              }),
            ],
          )),
    );
  }
}

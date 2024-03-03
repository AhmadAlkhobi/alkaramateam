import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/info_model.dart';
import 'package:sp1_e_commerce/core/data/models/match_model.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_videos.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/deatils_news/custom_statistics.dart';
import 'package:sp1_e_commerce/ui/views/deatils_news/details_news_controller.dart';

class DeatilsNews extends StatefulWidget {
  final InfoModel infoModel;
  final MatchModel? modelMatch;
  const DeatilsNews({super.key, required this.infoModel, this.modelMatch});

  @override
  State<DeatilsNews> createState() => _DeatilsNewsState();
}

class _DeatilsNewsState extends State<DeatilsNews> {
  late DetailsNewsController controller;
  @override
  void initState() {
    controller =
        Get.put(DetailsNewsController(widget.infoModel, widget.modelMatch));
    super.initState();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    autoPlay: true,
                    height: screenHeight(3.76)),
                itemBuilder: (context, index, realIndex) {
                  return Image.asset(
                    'assets/images/pngs/photo_٢٠٢٣-١٢-١٢_٢١-١٧-٥٩ 1.png',
                    width: screenWidth(1),
                  );
                },
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(screenWidth(30)),
                  width: screenWidth(8),
                  height: screenHeight(8),
                  decoration: BoxDecoration(
                      color: AppColors.blueColor, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/pngs/share.png',
                  ),
                ),
              ),
              Positioned(
                top: screenWidth(2),
                left: screenWidth(2.4),
                child: DotsIndicator(
                  dotsCount: 3,
                  position: currentIndex,
                  decorator: DotsDecorator(
                      activeColor: AppColors.orangeColor,
                      color: AppColors.blueColor),
                ),
              ),
              Positioned(
                top: screenWidth(2.3),
                left: screenWidth(1.18),
                child: Image.asset(
                  'assets/images/pngs/img 2.png',
                  height: screenHeight(20),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth(1),
          height: screenHeight(1.45),
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(screenWidth(8)),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              end: screenWidth(20),
              start: screenWidth(20),
            ),
            child: ListView(children: [
              CustomText(
                  text: controller.infoModel!.content.toString(),
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                  styleType: TextStyleType.SUBTITLE),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenHeight(15)),
                child: CustomText(
                    text: controller.infoModel!.content.toString(),
                    textColor: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    styleType: TextStyleType.SUBTITLE),
              ),
              Container(
                width: screenWidth(1),
                height: screenHeight(1.95),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: screenWidth(15)),
                      child: FittedBox(
                        child: Row(
                          children: [
                            Container(
                              width: screenWidth(4),
                              height: screenHeight(60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(25)),
                                color: AppColors.blueColor,
                              ),
                            ),
                            Container(
                                width: screenWidth(8),
                                child: CustomText(
                                  text: controller.modelMatch!.club1Name ?? "",
                                )),
                            Image.network(
                              controller.modelMatch!.logoclub1 ?? "",
                              height: screenHeight(25),
                            ),
                            SizedBox(
                              width: screenWidth(25),
                            ),
                            Image.network(
                              controller.modelMatch!.logoclub2 ?? "",
                              height: screenHeight(25),
                            ),
                            Container(
                                width: screenWidth(9),
                                child: CustomText(
                                  text: controller.modelMatch!.club2Name ?? "",
                                )),
                            Container(
                              width: screenWidth(4),
                              height: screenHeight(60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(25)),
                                color: AppColors.blueColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        width: screenWidth(1),
                        height: screenHeight(2.5),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Customstatistics(
                              textname: 'التسديدات',
                              textnum1: "5",
                              textnum2: "4",
                              value: 0.5,
                            );
                          },
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                    start: screenWidth(20),
                    top: screenWidth(18),
                    bottom: screenWidth(18)),
                height: screenWidth(4),
                child: CustomVideos(
                    textColor: AppColors.blackColor,
                    color: AppColors.whiteColor,
                    text: 'ملخص الاهداف واللاعبين',
                    imge: 'assets/images/pngs/video.png'),
              )
            ]),
          ),
        ),
      ]),
    ));
  }
}

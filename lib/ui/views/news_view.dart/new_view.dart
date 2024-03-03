import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_news_continar.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/deatils_news/deatils_news.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Obx(() {
      return homeController.allNewsList.length == 0
          ? SpinKitCircle(
              color: AppColors.blackColor,
            )
          : Padding(
              padding: EdgeInsetsDirectional.only(bottom: screenWidth(50)),
              child: ListView.builder(
                padding: EdgeInsetsDirectional.only(
                    start: screenWidth(30), end: screenWidth(20)),
                scrollDirection: Axis.vertical,
                itemCount: homeController.allNewsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(
                      end: screenWidth(20),
                      top: screenWidth(15),
                    ),
                    child: InkWell(
                        onTap: () => Get.to(DeatilsNews(
                              modelMatch: homeController.allMatchList[index],
                              infoModel: homeController.allNewsList[index],
                            )),
                        child: CustomNewsContinar(
                          img: homeController.allNewsList[index].image ?? '',
                          title: homeController.allNewsList[index].title ?? '',
                        )),
                  );
                },
              ),
            );
    })));
  }
}

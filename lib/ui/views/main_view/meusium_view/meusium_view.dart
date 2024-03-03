import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_title_underline.dart';
import 'package:sp1_e_commerce/ui/shared/custom_videos.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/about_club.dart/about_club_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meusium_view/custom_meusiam/cusom_boss.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meusium_view/custom_meusiam/custom_club_title.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meusium_view/custom_meusiam/custom_list_photo_title.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meusium_view/meusium_controller.dart';

class MeusiumView extends StatefulWidget {
  const MeusiumView({super.key});

  @override
  State<MeusiumView> createState() => _MeusiumViewState();
}

class _MeusiumViewState extends State<MeusiumView> {
  MeusiamController controller = Get.put(MeusiamController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'المتحف',
        showBool: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(20)),
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(180)),
            child: CustomTitleUNderLine(
              text: 'عن النادي',
              width: screenWidth(10),
              width1: screenWidth(20),
              width2: screenWidth(15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: screenWidth(20)),
            height: screenWidth(1.55),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: controller.title.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Get.to(AboutClubView()),
                  child: CustomPhotoTitle(
                    images: controller.images[index],
                    text: controller.title[index],
                    mainWidth: 1.2,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: screenWidth(50)),
            child: Image.asset('assets/images/pngs/Group 58.png'),
          ),
          Row(
            children: [
              CustomTitleUNderLine(
                text: 'رؤساء نادي الكرامة',
                width: screenWidth(5),
                width1: screenWidth(10),
                width2: screenWidth(8),
              ),
              SizedBox(
                width: screenWidth(7),
              ),
              Text(
                'مشاهدة المزيد>',
                style: TextStyle(fontSize: screenWidth(22)),
              )
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
                top: screenWidth(20), bottom: screenWidth(30)),
            height: screenWidth(2),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return CustomBoss(
                    photoUrl: 'assets/images/pngs/Rectangle101.png',
                    label: 'نصوح البارودي 2006');
              },
            ),
          ),
          Row(
            children: [
              CustomTitleUNderLine(
                text: 'ألقاب نادي الكرامة',
                width: screenWidth(5.5),
                width1: screenWidth(10),
                width2: screenWidth(8),
              ),
              SizedBox(
                width: screenWidth(6),
              ),
              Text(
                'مشاهدة المزيد>',
                style: TextStyle(fontSize: screenWidth(22)),
              )
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(top: screenWidth(20)),
            height: screenWidth(1.6),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return CustomClubTitle(
                  photoUrl: 'assets/images/pngs/out2.png',
                );
              },
            ),
          ),
          CustomTitleUNderLine(
            text: ' الجوائز الفردية للاعبي نادي الكرامة',
            width: screenWidth(3.5),
            width1: screenWidth(7),
            width2: screenWidth(5.5),
            textSize: screenWidth(18.5),
          ),
          Container(
            padding: EdgeInsets.only(top: screenWidth(20)),
            height: screenWidth(1.19),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: controller.title1.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomPhotoTitle(
                  isBool: true,
                  images: controller.images1[index],
                  text: controller.title1[index],
                  mainWidth: 2,
                );
              },
            ),
          ),
          Row(
            children: [
              CustomTitleUNderLine(
                width: screenWidth(5),
                width1: screenWidth(9.5),
                width2: screenWidth(8),
                text: 'أجمل أهداف لاعبي الكرامة',
                textSize: screenWidth(20),
              ),
              SizedBox(
                width: screenWidth(6),
              ),
              Text(
                'مشاهدة المزيد>',
                style: TextStyle(fontSize: screenWidth(22)),
              )
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
                top: screenWidth(18), bottom: screenWidth(18)),
            height: screenWidth(3.3),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return CustomVideos(
                    color: AppColors.barColor,
                    text: 'هدف اللاعب محمد صهيوني في مرمى الوحدة الدوري السوري',
                    imge: 'assets/images/pngs/video.png');
              },
            ),
          )
        ],
      ),
    ));
  }
}

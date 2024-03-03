import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_title_underline.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/supporters_view/custom_nametext.dart';
import 'package:sp1_e_commerce/ui/views/supporters_view/custom_textbetweenpoint.dart';

class SupportsView extends StatefulWidget {
  const SupportsView({super.key});

  @override
  State<SupportsView> createState() => _SupportsViewState();
}

class _SupportsViewState extends State<SupportsView> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(4), bottom: screenWidth(2.5)),
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
                          start: screenWidth(15), end: screenWidth(15)),
                      child: Container(
                          width: screenWidth(1.2),
                          height: screenWidth(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColors.greycolor)),
                    );
                  },
                ),
              ),
            ),
            DotsIndicator(
              dotsCount: 3,
              decorator: DotsDecorator(
                  activeColor: AppColors.orangeColor,
                  color: AppColors.blueColor),
            ),
            CustomTitleUNderLine(
              text: "رابطة مشجعي نادي الكرامة",
              width: screenWidth(10),
              width1: screenWidth(20),
              width2: screenWidth(15),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(10),
                  end: screenWidth(30),
                  start: screenWidth(30)),
              child: Container(
                width: screenWidth(1),
                height: screenWidth(3),
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textbetweenpoint(text: 'رئيس الرابطة '),
                    CustomText(
                      text: 'السيد باسم محمد نزار زهرة',
                      textColor: AppColors.whiteColor,
                      styleType: TextStyleType.TITLE,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: screenWidth(30)),
                      child: Container(
                        width: screenWidth(1),
                        height: screenWidth(150),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                      ),
                    ),
                    textbetweenpoint(
                      text: 'أعضاء الرابطة ',
                    ),
                    customNamesText(
                      Text1: "الدكتور ايهاب القاضي",
                      Text2: "السيد عبدالله المغربي",
                    ),
                    customNamesText(
                      Text1: "الدكتور كنا ن بيرقدار",
                      Text2: "السيد عمار حاضري",
                    ),
                    customNamesText(
                      Text1: "المهندس وسيم أحمد الريس",
                      Text2: " السيد نبيل الزامل",
                    ),
                  ],
                ),
              ),
            ),
            CustomTitleUNderLine(
              text: 'رابطة مشجعي نادي الكرامة',
              width: screenWidth(10),
              width1: screenWidth(20),
              width2: screenWidth(15),
            ),
            CustomText(
              text:
                  'ييسالسائثيتىئفتئقفنلتئةءبلنةتءبل للي بيي بب قق بب يب فل بب نتشلاااااااااااااقسئابئيالئب قبلسيل  قسل ثل ال   س5  غى لاشقفشقفلاشقغفيسابتشقغشثقغ',
              textColor: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
            CustomTitleUNderLine(
              text: "اجمل لقطات مشجعي نادي الكرامة",
              width: screenWidth(10),
              width1: screenWidth(20),
              width2: screenWidth(15),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: screenWidth(4)),
              child: SizedBox(
                width: screenWidth(3),
                height: screenWidth(5),
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: screenWidth(15), end: screenWidth(15)),
                      child: Container(
                          width: screenWidth(2),
                          height: screenWidth(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColors.greycolor)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
